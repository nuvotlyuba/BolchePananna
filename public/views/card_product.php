<!-- Карточка товара для каталога -->

<?php foreach ($my_arr as $item) : ?>

   <div class="catalogue__grid-item">
     <a href = "?controller=product_card_page&good_id=<?php echo $item['good_id']; ?>"> <img src="<?php echo $item['img_url']; ?>" alt="Pic"> </a>
      <div class="catalogue__grid-item__title"><?php echo $item['name_good']; ?></div>
      <div class="catalogue__grid-item__price"> <?php echo $item['unit_price']; ?> ₽</div>
   </div>

<?php endforeach; ?>