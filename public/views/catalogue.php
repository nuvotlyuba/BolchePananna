<?php

require_once "core.php";

require_once "models" . DIRECTORY_SEPARATOR . "catalogue_model.php";

?>

<?php include 'header.php' ?>

<!-- CATALOGUE CONTENT -->
<section class="catalogue">
   <div class="container">
      <p class="catalogue__title"></p>

      <!-- Dropdown menu -->
      <nav class="catalogue__menu">
         <ul class="catalogue__menu-items">
            <li class="dropdown-item menu-item--text-color"><a href="#">Раздел</a>
               <ul class="dropdown">
                  <?php
                  if (is_array($categories)) {
                     foreach ($categories as $category) {
                        echo "<li class=\"dropdown__level1\"><a href=\"?controller=catalogue&cat_id={$category['id']}\">{$category['name_cat']}</a>";
                     }
                  }
                  ?>
               </ul>
            </li>
            <img class="catalogue__menu-vector" src="images/menu-vector.svg" alt="Vector">
            <li class="dropdown-item menu-item--text-color"><a href="#">Размер</a>
               <ul class="dropdown">
                  <?php
                  if (is_array($sizes)) {
                     foreach ($sizes as $item) {
                        echo "<li class=\"dropdown__level1\"><a href=\"?controller=catalogue&size_id={$item['id']}\">{$item['name_size']}</a>";
                     }
                  }
                  ?>
               </ul>
            </li>
            <img class="catalogue__menu-vector" src="images/menu-vector.svg" alt="Vector">
         </ul>
      </nav>
      <!-- END Dropdown menu -->

      <div class="catalogue__grid">
         <?php require_once 'card_product.php'; ?>
      </div>
      <div class="pagination-wrapper">
         <?php for ($i = 1; $i <= $pagination_length; $i++) :; ?>
            <?php if (!empty($i) && !empty($cat_id)) {
               echo "<div class=\"pagination__page-link\"><a href=\"?controller=catalogue$cat_id&id=$i\">$i</a></div>";
            } else {
               echo "<div class=\"pagination__page-link\"><a href=\"?controller=catalogue&id=$i\">$i</a></div>";
            }
            ?>
         <?php endfor; ?>
      </div>
   </div>
</section>

<!-- END CATALOGUE CONTENT -->

<?php include 'footer.php'; ?>