<?php
require_once 'core.php';


session_start();

// подключаемся к БД
$mysqli = connect_db();

// Сесия для хранения  товаров, функция count считает количество товаров в нашей корзине 
if (isset($_SESSION['cart_list'])) {
   // echo "Количество товара в вашей корзине: " . count($_SESSION['cart_list']) . " шт.<br>";
}

//Проверка, если есть GET параметр на удаление товара, и существует ссесия с товарами, и с помощью цикла находим совпадающий id товара из GET параметра на удаления 
//с id товаром в корзине, и, как только находим, удаляем товар по ключу из сессии
if (isset($_GET['delete_id']) && isset($_SESSION['cart_list'])) {
   foreach ($_SESSION['cart_list'] as $key => $value) {
      if ($value['good_id'] == $_GET['delete_id']) {
         unset($_SESSION['cart_list'][$key]);
      }
   }
}

//Передается GET папаметром id товара по ссылке и проверяется, не пустой ли он 
if (isset($_GET['good_in_cart_id']) && !empty($_GET['good_in_cart_id'])) {
   //В переменную записываем функцию и передаем туда ассоциативный массив из функции
   $current_added_good = get_good_by_id($_GET['good_in_cart_id']);

   //Проверяет налицие такого товара. Если его нет в базе, то отправляет его на страницу 404	
   if (!empty($current_added_good)) {
      //Проверка если сессия не задана, а это значит, что добавленый товар был первым, и карзина до этого была пуста и запускается сессия
      // и мы добавляем а наш массив $_SESSION['cart_list'][] наш ассоциативный массив, который пришел с базы, если товар есть в корзине, то проверка не выполняется 
      if (!isset($_SESSION['cart_list'])) {
         $_SESSION['cart_list'][] = $current_added_good;
      }

      $good_check = false;
      //Цикл дял сравнения id товара из карзины с id товара из базы данных. Если совпадения есть, то $course_check = false меняет свое значение на true
      if (isset($_SESSION['cart_list'])) {
         foreach ($_SESSION['cart_list'] as $value) {
            if ($value['good_id'] == $current_added_good['good_id']) {
               $good_check = true;
            }
         }
      }

      //Если значение $course_check не false, то мы записываем товар в карзину. Сделано, чтобы избежать дублирования товара в карзине при ее обновлении
      if (!$good_check) {
         $_SESSION['cart_list'][] = $current_added_good;
      }
   }
}

$total_price = 0;

//Массив для вычисления общей цены в корзине покупателя
if (isset($_SESSION['cart_list'])) {
   foreach ($_SESSION['cart_list'] as $value) {
      $total_price = $total_price + $value['unit_price'];
      //print_r( $value ['unit_price']);
   }
}
// запрос для записи в базу данных
//и указание, какие данные в какие столбцы таблицы должны быть занесены
//При надатие на ссылку "Оформить заказ" происходит запись в базу данных
if (isset($_GET['good_id']) && isset($_SESSION['cart_list'])) {
   $count_goods = count($_SESSION['cart_list']);

   $sql = "INSERT INTO orders (count_goods, sum_order) VALUES ('$count_goods', '$total_price')";
   if (mysqli_query($connection, $sql)) {
      echo "New record created successfully";
   } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($connection);
   }
   mysqli_close($connection);
}

?>