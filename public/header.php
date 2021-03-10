<!DOCTYPE html>
<html lang="ru">

<head>
   <meta charset="UTF-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="style/css/common_styles/normalize.css">
   <link rel="stylesheet" href="style/css/common_styles/slick.css">
   <link rel="stylesheet" href="style/css/common_styles/jquery.fancybox.min.css">
   <link rel="stylesheet" href="style/css/common_styles/hamburgers.css">
   <link rel="stylesheet" href="style/css/common_styles/fonts.css">
   <link rel="stylesheet" href="style/css/common_styles/variables.css">
   <link rel="stylesheet" href="style/css/common_styles/common.css">

   <link rel="stylesheet" href="style/css/header.css">
   <link rel="icon" href="http://kursyweb.ru/2020-2/project3/favicon.ico" type="image/x-icon">
   <link rel="stylesheet" href="style/css/main.css">
   <link rel="stylesheet" href="style/css/catalogue.css">
   <link rel="stylesheet" href="style/css/product_card_page.css">
   <link rel="stylesheet" href="style/css/cart.css">
   <link rel="stylesheet" href="style/css/eco.css">
   <link rel="stylesheet" href="style/css/not_ready.css">
   <link rel="stylesheet" href="registration/login.css">
   <link rel="stylesheet" href="style/css/payment_delivery.css">
   <link rel="stylesheet" href="style/css/footer.css">
</head>

<body>

   <div class="wrapper">

      <!-- HEADER -->
      <div class="header">
         <div class="container header-content">
            <button class="hamburger hamburger--squeeze footer-menu-toggle js-menu-toggle" type="button">
               <span class="hamburger-box">
                  <span class="hamburger-inner"></span>
               </span>
            </button>
            <nav class="header-menu">
               <ul class="header-menu__items">
                  <li><a href="?controller=catalogue">Каталог</a></li>
                  <li><a href="?controller=catalogue&sale=1">Распродажа</a></li>
                  <li><a href="?controller=cart">Корзина</a></li>
                  <li><a href="?controller=eco">ЭКО</a></li>
               </ul>
            </nav>

            <div class="header-icons__block">
               <div class="header-icons__block-left">
                  <a class="search-icon" href="?controller=not_ready"><img src="images/search_icon.svg" alt="Поиск"></a>
                  <a class="account-icon" href="?controller=login"><img src="images/account_icon.svg" alt="Авторизоваться"></a>
               </div>

               <div class="header-icons__block-right">
                  <a class="logo" href="?controller=main"><img src="images/logo.svg" alt="Логотип"></a>
               </div>
            </div>
         </div>
      </div>
      <!-- END HEADER -->