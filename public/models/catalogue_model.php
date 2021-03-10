<?php

require_once "core.php";

require_once "views".DIRECTORY_SEPARATOR."catalogue.php";
// подключаемся к БД
$mysqli = connect_db();

// Проверяем в GET категории: ПОПУЛЯРНОЕ НОВИНКИ РАСПРОДАЖА
if (!empty($_GET['top'])) {

   $SQL = "SELECT * FROM `goods` WHERE `top` = 1 GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`";;
   $goods = query_all($mysqli, $SQL);
} elseif (!empty($_GET['new'])) {

   $SQL = "SELECT * FROM `goods` WHERE `new` = 1 GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`";;
   $goods = query_all($mysqli, $SQL);
} elseif (!empty($_GET['sale'])) {

   $SQL = "SELECT * FROM `goods` WHERE `sale` = 1 GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`";;
   $goods = query_all($mysqli, $SQL);
} else {
   $SQL = "SELECT * FROM `goods` GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`";
   $goods = query_all($mysqli, $SQL);
}

// Формируем запрос к таблице CATEGORIES для фильтра по категориям одежды
$categories = query_all($mysqli, "SELECT * FROM `categories` WHERE `parent` is NULL");

if (isset($_GET['cat_id'])) {
   $id = (int) $_GET['cat_id'];
   $sub_categories = query_all(
      $mysqli,
      "SELECT * FROM `categories` WHERE `parent`=$id"
   );
}

// Проверяем в GET категории одежды
if (isset($_GET['cat_id'])) {

   if ($_GET['cat_id'] == 1)  // если категория "Верхняя одежда"
   {
      $cat_id = "&cat_id=1";
      $id = 1;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `category`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }

   if ($_GET['cat_id'] == 2)  // если категория "Одежда"
   {
      $cat_id = "&cat_id=2";
      $id = 2;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `category`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }


   if ($_GET['cat_id'] == 3)  // если категория "Аксессуары"
   {
      $cat_id = "&cat_id=3";
      $id = 3;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `category`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }
}
// Формируем запрос к таблице SIZES для фильтра по размерам одежды
$sizes = query_all($mysqli, "SELECT * FROM `sizes`");

if (isset($_GET['size_id'])) {
   $size_id = (int) $_GET['size_id'];
   $goods = query_all(
      $mysqli,
      "SELECT * FROM `goods` WHERE `size` = $size_id"
   );
}

//Проверяем в GET категории одежды
if (isset($_GET['size_id'])) {

   if ($_GET['size_id'] == 1)  // если размер XS
   {
      $cat_id = "&size_id=1";
      $id = 1;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `size`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }

   if ($_GET['size_id'] == 2)  // если размер S
   {
      $cat_id = "&size_id=2";
      $id = 2;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `size`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }

   if ($_GET['size_id'] == 3)  // если размер М
   {
      $cat_id = "&size_id=3";
      $id = 3;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `size`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }
   if ($_GET['size_id'] == 4)  // если размер L
   {
      $cat_id = "&size_id=4";
      $id = 4;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `size`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }
   if ($_GET['size_id'] == 5)  // если размер XL
   {
      $cat_id = "&size_id=5";
      $id = 5;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `size`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }
   if ($_GET['size_id'] == 6)  // если размер ONE SIZE
   {
      $cat_id = "&size_id=6";
      $id = 6;
      $goods = query_all(
         $mysqli,
         "SELECT * FROM `goods` WHERE `size`=$id GROUP BY `name_good` HAVING COUNT(*) >= 1 ORDER BY `good_id`"
      );
   }
}

// Подтягиваем данные из полученного массива элементов (=товаров) в сетку из 9 карточек
$count = 0;
$empty_arr = [];
$page_amount = 9;

foreach ($goods as $item) {
   if ($count < $page_amount) {
      $empty_arr[$count] = $item;
   }
   $count++;
}

// Пагинация
$count = 0;
$count_2 = 0;

$goods_amount = count($goods);
$pagination_length = ceil($goods_amount / $page_amount);

if (isset($_GET['id'])) {
   $current_page_num = ($_GET['id'] * $page_amount) - $page_amount;
} else {
   $current_page_num = (1 * $page_amount) - $page_amount;
}

$my_arr = [];

foreach ($goods as $item) {
   if ($count_2 >= $current_page_num) {
      $my_arr[$count] = $item;
      if (($count + 1) > ($goods_amount - $current_page_num)) {
         break;
      }

      if ($count == ($page_amount - 1)) {
         break;
      }
      $count++;
   }
   $count_2++;
}
?>