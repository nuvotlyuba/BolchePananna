<?php
require_once "core.php";
require_once "views" . DIRECTORY_SEPARATOR . "cart.php";
require_once  "models" . DIRECTORY_SEPARATOR . "cart_model.php";
?>

<?php include 'header.php' ?>

<!-- CART CONTENT -->

<div class="cart-section container">
   <div class="cart-section__order-info">
      <div class="cart-section__title">Оформление заказа</div>

      <!-- Таблица с данными по товару в корзине -->

      <?php if (isset($_SESSION['cart_list']) && count($_SESSION['cart_list']) != 0) : ?>

         <table class="cart-section__goods-table">
            <thead class="cart-section__goods-table__column-titles">
               <tr>
                  <th>Название</th>
                  <th>Размер</th>
                  <th>Кол-во</th>
                  <th>Сумма</th>
                  <th></th>
               </tr>
            </thead>

            <tbody class="cart-section__goods-table__row-content">
               <?php foreach ($_SESSION['cart_list'] as $good) : ?>
                  <tr class="cart-section__goods-table__good-item">
                     <td>
                        <img src="<?php echo $good['img_url_mini']; ?>" alt="Pic">
                        <div><?php echo $good['article']; ?></div>
                     </td>

                     <td><?php echo $good['name_size']; ?></td>
                     <td>
                        <img src="images/minus-icon.svg" alt="Remove">
                        <span>1</span>
                        <img src="images/plus-icon.svg" alt="Add">
                     </td>
                     <td>
                        <span><?php echo $good['unit_price']; ?> ₽</span>
                     </td>

                     <td>
                        <a href="?controller=cart&delete_id=<?php echo $good['good_id']; ?>"><img src="images/cross-icon.svg" alt="Remove"></a>
                     </td>
                  </tr>
               <?php endforeach; ?>
            </tbody>
         </table>
         <!-- Конец таблицы -->
   </div>

   <!-- Табличка с итоговым подсчетом суммы корзины. Фиксируется на экране. -->

   <div class="cart-section__receipt-wrapper">
      <div class="cart-section__receipt-wrapper__fixed">
         <div class="cart-section__receipt">
            <div class="cart-section__receipt-title">
               Ваш заказ
            </div>
            <div class="cart-section__recepit-content">
               <div class="cart-section__receipt-content__line">
                  <div class="cart-section__receipt-content-text">Товары:</div>
                  <div class="cart-section__receipt-content-text"> <?php echo $total_price ?> ₽</div>
               </div>

               <div class="cart-section__receipt-content__line">
                  <div class="cart-section__receipt-content-text">Доставка:</div>
                  <div class="cart-section__receipt-content-text">300 ₽</div>
               </div>

               <div class="cart-section__receipt-content__line total-price">
                  <div class="cart-section__receipt-content-text">Итого:</div>
                  <div class="cart-section__receipt-content-text"><?php echo $new_total_price = $total_price + 300 ?> ₽</div>
               </div>
            </div>
            <div class="cart-section__place-order__btn">
               Оформить заказ
            </div>
         </div>
      </div>

   <?php else : ?>
      </script>
      <p>
         Ваша корзина пуста
      </p>

   <?php endif; ?>


   </div>

</div>
<!------------------------ FOOTER ------------------------>
<?php include 'footer.php'; ?>
<!------------------------ END FOOTER ------------------------>