<?php 
function index(){

	
	$method = $_SERVER['REQUEST_METHOD'];
	if($method==='POST'){
		$login = request_get('login','','POST');
		$password = request_get('password','','POST');
		if(empty($login)|| empty($password))
		{
			flash('Заполните все поля...');
		}
		// Подключние к БД
		$mysqli = connect_db();
		// Запрос к таблице пользователей
		$login = sanitize($mysqli, $login);
		$SQL = "SELECT * FROM `users` WHERE `login`='$login'";
		$user = query_db_one($mysqli, $SQL);

		if($user && md5($password)===$user['password']){
			// Сохраняем инфомацию о пользователе в сессии
			session_add('login', $user['login']);
			redirect(url_for('main'));
		} else {
			flash('Неверная пара логин пароль...');
		}

	}

}

function out()
{
	session_start();
	session_unset();
	session_destroy();
	return redirect(url_for('main'));
}
 ?>