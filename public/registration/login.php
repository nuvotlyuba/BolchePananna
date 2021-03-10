<?php include 'header.php' ?>
<?php
$messages = flash();
if ($messages)
	foreach ($messages as $message) {
		echo "<p>$message</p>";
	}
?>



<div class="login-content container">
	<div class="login__title">Вход</div>

	<form id="login-content__form" method="POST">
		<input id="login-email" type="text" name="email" placeholder="Email" value="<?php echo request_get('login', '', 'POST') ?>">
		<input id="login-password" type="password" name="password" placeholder="Пароль">
		<input id="login-submit" type="submit" value="Войти">
		<div class="register__page"><a href="#">Регистрация</a></div>
		<!-- Сссылка регистрации меняет вид на страничку register.php -->
	</form>

</div>

<?php include 'footer.php'; ?>