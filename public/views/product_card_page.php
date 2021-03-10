<?php include 'header.php' ?>

<?php
require_once "core.php";

//Запрос из базы данных
if (isset($_GET['good_id'])) {
   $query = "SELECT * FROM goods WHERE good_id=" . $_GET['good_id'];

   $mysqli = connect_db();


   $current_good = query_db_one($mysqli, $query);
   // var_dump($current_course);
   // print_r($current_good);
} else echo " ooooo  no no no no no no no";

//Это мой код начало

if ($current_good['name_size'] == 'XS') {
   $size_1 = $current_good['good_id'];
}
if ($current_good['name_size'] == 'XS') {
   $size_2 = $current_good['good_id'] + 1;
}
if ($current_good['name_size'] == 'XS') {
   $size_3 = $current_good['good_id'] + 2;
}
if ($current_good['name_size'] == 'XS') {
   $size_4 = $current_good['good_id'] + 3;
}
if ($current_good['name_size'] == 'XS') {
   $size_5 = $current_good['good_id'] + 4;
}


if ($current_good['name_size'] == 'S') {
   $size_1 = $current_good['good_id'] - 1;
}
if ($current_good['name_size'] == 'S') {
   $size_2 = $current_good['good_id'];
}

if ($current_good['name_size'] == 'S') {
   $size_3 = $current_good['good_id'] + 1;
}

if ($current_good['name_size'] == 'S') {
   $size_4 = $current_good['good_id'] + 2;
}

if ($current_good['name_size'] == 'S') {
   $size_5 = $current_good['good_id'] + 3;
}


if ($current_good['name_size'] == 'M') {
   $size_1 = $current_good['good_id'] - 2;
}
if ($current_good['name_size'] == 'M') {
   $size_2 = $current_good['good_id'] - 1;
}

if ($current_good['name_size'] == 'M') {
   $size_3 = $current_good['good_id'];
}

if ($current_good['name_size'] == 'M') {
   $size_4 = $current_good['good_id'] + 1;
}

if ($current_good['name_size'] == 'M') {
   $size_5 = $current_good['good_id'] + 2;
}


if ($current_good['name_size'] == 'L') {
   $size_1 = $current_good['good_id'] - 3;
}
if ($current_good['name_size'] == 'L') {
   $size_2 = $current_good['good_id'] - 2;
}

if ($current_good['name_size'] == 'L') {
   $size_3 = $current_good['good_id'] - 1;
}

if ($current_good['name_size'] == 'L') {
   $size_4 = $current_good['good_id'];
}

if ($current_good['name_size'] == 'L') {
   $size_5 = $current_good['good_id'] + 1;
}



if ($current_good['name_size'] == 'XL') {
   $size_1 = $current_good['good_id'] - 4;
}
if ($current_good['name_size'] == 'XL') {
   $size_2 = $current_good['good_id'] - 3;
}

if ($current_good['name_size'] == 'XL') {
   $size_3 = $current_good['good_id'] - 2;
}

if ($current_good['name_size'] == 'XL') {
   $size_4 = $current_good['good_id'] - 1;
}

if ($current_good['name_size'] == 'XL') {
   $size_5 = $current_good['good_id'];
}
if ($current_good['name_size'] != 'one-size') {
   $size_6 = $current_good['good_id'];
}

//Это мой код-конец
?>
<!-- Product Card -->

<body>
   <?php //echo $size_5; 
   // print_r($current_good['name_size']);
   ?>
   <div class="product-card container">
      <div class="product-card__main-block">
         <img src="<?php echo $current_good['img_url']; ?>" alt="Pic">
         <div class="poduct-card__info">
            <div class="product-card__title"> <?php echo $current_good['article']; ?> </div>

            <div class="product-card__sizes">
               <div class="product-card__sizes__title">Размеры</div>
               <div class="product-card__sizes__items">
                  <?php

                  if ($size_6 >= 102 && $size_6 <= 110) {

                     echo "<div class=\"product-card__sizes__item one-size--box-size\"><a href=\"?controller=cart&good_in_cart_id=  $size_6 \">ONE SIZE</a></div>";
                  } else {
                     echo "<div class=\"product-card__sizes__item\"><a href=\"?controller=cart&good_in_cart_id= $size_1  \">XS</a></div>";
                     echo "<div class=\"product-card__sizes__item\"><a href=\"?controller=cart&good_in_cart_id= $size_2  \">S</a></div>";
                     echo "<div class=\"product-card__sizes__item\"><a href=\"?controller=cart&good_in_cart_id= $size_3  \">M</a></div>";
                     echo "<div class=\"product-card__sizes__item\"><a href=\"?controller=cart&good_in_cart_id= $size_4  \">L</a></div>";
                     echo "<div class=\"product-card__sizes__item\"><a href=\"?controller=cart&good_in_cart_id= $size_5  \">XL</a></div>";
                  } ?>
               </div>
            </div>
            <div class="product-card__price-chart-block">
               <div class="product-card__price"><?php echo $current_good['unit_price']; ?> ₽</div>

               <div class="btn btn__add-to-chart"><a href="?controller=cart&good_in_cart_id=<?php echo $current_good['good_id']; ?>">Добавить в корзину </a></div>

            </div>
         </div>
      </div>

      <div class="product-card__bottom-block">
         <div class="product-card__description">
            <div class="product-card__description__title">Описание</div>
            <div class="product-card__description__article">
               <div class="product-card__description__article-title"><?php echo $current_good['article']; ?></div>
               <div class="product-card__description__article-text"><?php echo $current_good['type_good']; ?></div>
            </div>
            <div class="product-card__description__more">
               <div class="product-card__description__more-title">Подробнее</div>
               <div class="product-card__description__more-text">
                  <?php echo $current_good['description']; ?>
               </div>
            </div>
         </div>

         <div class="product-card__delivery">
            <div class="product-card__delivery__title">Доставка</div>
            <p class="product-card__delivery__text">Мы доставляем вещи Почтой России или курьером СДЭК от 290 ₽. Любые заказы вы можете оплатить при получении, при выборе доставки СДЭКом. Заказы от 4000 ₽ доставляем бесплатно Почтой России. Кроме того, вы можете забрать заказ самостоятельно в магазине в Нижнем Новгороде.</p>
            <p class="product-card__delivery__text">Если вам нужен другой способ доставки, свяжитесь с нами по телефону или электронной почте. </p>
         </div>
      </div>
   </div>
   <!-- END Product Card -->
</body>

<?php include 'footer.php'; ?>