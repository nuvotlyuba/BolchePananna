<?php include 'header.php' ?>

<!-- BANNER SLIDER  -->
<section class="topslider container">
   <div class="topslider__block js-topslider">
      <div class="topslider__slide">
         <div class="topslider__slide-row slide--one">
            <div class="topslider__slide-text slide-text__one fade-in">Bolce <br> <span class="fade-me-in">Pananna</span></div>
         </div>
      </div>

      <div class="topslider__slide">
         <div class="topslider__slide-row slide--two">
            <div class="topslider__slide-text slide-text__two"> Новые утепленные <br> <a href="#"><span class="text--bold">куртки</span></a> </div>
         </div>
      </div>

      <div class="topslider__slide">
         <div class="topslider__slide-row slide--three">
            <div class="topslider__slide-text slide-text__three"> <a href=""><span class="text--bold">Распродажа</span></a> <br> осенней коллекции</div>
         </div>
      </div>
   </div>
   <span class="paging-info"></span>
   <div class="paging-info__box-angle--one"></div>
   <div class="paging-info__box-angle--two"></div>
</section>
<!-- END BANNER SLIDER -->

<!-- MAIN CONTENT -->
<!-- Блок с кратким описание бренда, фото -->
<section class="container main-content">
   <div class="main-content__brand-info">
      <div class="main-content__title data">Urban brand <br> clothes</div>
      <p class="main-content__brand-info__text"><span class="text--bold">BP</span> - это бренд одежды, <br>
         сконцентрированный на <br> свободных формах и <br> минималистичных силуэтах, спокойной цветовой
         гамме, и <br> стремящийся к этичному и <br> экологичному производству</p>
   </div>
   <img src="images/main-content-photo.png" class="main-content__img" alt="Pic">
   <div class="geometry__block"></div>
</section>

<section class="container">
   <div class="goods-categories">

      <!-- Верхняя одежда -->
      <div class="goods-categories__item">
         <p class="item-text">Верхняя одежда</p>
         <a href="?controller=catalogue&cat_id=1"><img class="item-image" src="images/outer-clothing-image.png" alt="Pic"></a>
      </div>

      <!-- Одежда -->
      <div class="goods-categories__item category--margin">
         <p class="item-text">Одежда</p>
         <a href="?controller=catalogue&cat_id=2"><img class="item-image" src="images/clothes_image.png" alt="Pic"></a>
      </div>
   </div>
</section>

<!-- Основное меню главной страницы, отправляющее в каталог -->
<div class="main-menu">
   <div class="container">
      <div class="main-menu__block">
         <div class="main-menu__block-items">
            <div class="block-item">
               <p class="block-item__text"><a href="?controller=catalogue&new=1">новое</a></p>
               <a href="<?php echo url_for('catalog', 'news'); ?>"><img class="vector" src="images/main-menu-vector.svg" alt="vector"></a>
            </div>

            <div class="block-item">
               <p class="block-item__text"><a href="?controller=catalogue&top=1">популярное</a></p>
               <a href="#"><img class="vector" src="images/main-menu-vector.svg" alt="vector"></a>
            </div>

            <div class="block-item">
               <p class="block-item__text"><a href="?controller=catalogue&sale=1">скидки</a></p>
               <a href="#"><img class="vector" src="images/main-menu-vector.svg" alt="vector"></a>
            </div>
         </div>

         <!-- Слайдер внутри основного меню главной страницы -->
         <div class="main-menu__slider">
            <div class="main-menu__slider-block js-menu-slider">
               <div class="main-menu__slider__slide">
                  <div class="slide-img goods-categories__item">
                     <img class="item-image" src="images/top-sales-image.png" alt="Pic">
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Конец слайдера -->

   </div>
</div>
<!-- Конец основного меню главной страницы -->

<!-- Аксессуары -->
<section class="container">
   <div class="goods-categories__last--category">
      <div class="goods-categories__item">
         <p class="item-text">Аксессуары</p>
         <a href="?controller=catalogue&cat_id=3"><img class="item-image" src="images/accessories-image.png" alt="Pic"></a>
      </div>
   </div>
</section>

<!-- NEW COLLECTION -->
<section class="container new-collection__section">
   <div class="new-collection__main-block">
      <div class="new-collection__section-title title--one">New</div>
      <div class="new-collection__section-title title--two">Collection</div>
      <img class="new-collection__main-photo" src="images/new-collection_main-photo.png" alt="Pic">
   </div>

   <div class="new-collection__bottom-block">
      <div class="new-collection__section-text text--left">Another <br> way of</div>
      <img class="new-collection__left-photo" src="images/new-collection_left-photo.png" alt="Pic">
      <div class="new-collection__section-text text--right">Looking at <br> things</div>
      <img class="new-collection__right-photo" src="images/new-collection_right-photo.png" alt="Pic">
   </div>
</section>


<!-- END MAIN CONTENT -->
<?php include 'footer.php' ?>