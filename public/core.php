<?php
function request_get($name, $default = '', $method = 'GET')
{
	if ($method === 'GET') {
		return !empty($_GET[$name]) ? $_GET[$name] : $default;
	} else {
		return !empty($_POST[$name]) ? $_POST[$name] : $default;
	}
}

function find_route($uri)
{
	$routes = router();
	foreach ($routes as $route)
		if ($route['uri'] === $uri)
			return True;
	return False;
}

function get_model_name($uri)
{
	$routes = router();
	foreach ($routes as $route)
		if ($route['uri'] === $uri)
			return 'models/' . $route['model'] . '_model.php';
	return False;
}

function get_action_name($uri)
{
	$routes = router();
	foreach ($routes as $route)
		if ($route['uri'] === $uri)
			return $route['action'];
	return False;
}

function get_params($uri)
{
	return False;
}

function render_template($tpl, $params = [])
{
	include $tpl;
}

function router($uri = NULL, $model = NULL, $action = 'index', $methods = ['GET'])
{ //наполняем массив с методами, путями, действиями
	static $routes = [];
	if ($uri && $model) {
		$routes[] = [
			'uri' => $uri,
			'model' => $model,
			'action' => $action,
			'methods' => $methods
		];
	}
	return $routes;
}

function flash($message = NULL)
{
	static $msgs = [];
	if ($message)
		$msgs[] = $message;
	return $msgs;
}

function redirect($url)
{
	header("Location:$url");
	die();
}

function url_for($model, $action = 'index')
{
	$routes = router();
	foreach ($routes as $route)
		if ($route['model'] === $model && $route['action'] === $action)
			return '?path=' . $route['uri']; //'?path=' . 
	return False;
}

function start_app($route)
{
	if (find_route($route)) {
		// echo "Да!";
		$model_name = get_model_name($route);
		$action_name = get_action_name($route);
		$params = get_params($route);
		if (file_exists($model_name)) {
			require $model_name;
			if (function_exists($action_name)) {
				if ($params) {
					$action_name($params);
				} else
					$action_name();
			} else {
				render_template('404.html');
			}
		} else {
			render_template('404.html');
		}
	} else
		render_template('404.html');
}

function connect_db()
{
	$mysqli = mysqli_connect("localhost", "uskov_project3_2020_2", "co550l96", "uskov_project3_2020_2");
	mysqli_set_charset($mysqli, 'utf-8');

	if (mysqli_connect_errno()) {
		echo "Не удалось подключиться к MySQL: " . mysqli_connect_error();
		return false;
	} else
		return $mysqli;

	mysqli_query($mysqli, "utf8");
}

function query_all($link, $sql) //запрос ко всем записям в базе данных
{
	$res = mysqli_query($link, $sql);

	if ($res) {
		while ($row =  mysqli_fetch_assoc($res)) {
			$results[] = $row;
		}
		return $results;
	}
	return false;
}

function query_db_one($link, $sql) //запрос к одной записи
{
	$res = mysqli_query($link, $sql);
	if ($res)
		return mysqli_fetch_assoc($res);
	else
		return false;
}

function sanitize($link, $data)
{
	return mysqli_real_escape_string(
		$link,
		htmlspecialchars(strip_tags($data))
	);
}

function session_get($name, $default = '')
{
	return !empty($_SESSION[$name]) ? $_SESSION[$name] : $default;
}

function session_add($name, $value = '')
{
	if (!isset($_SESSION))
		session_start();
	$_SESSION[$name] = $value;
}

//Функция получения товара по id вызывеется в файла карзины cart.php 
//Переменная global $connection делает текущее подключение к базе данных глобальным
//Как только мы отправляем товар в корзину его id поподает в $id и на его основе далается запрос в базу данных, а ответ превращается в ассоциативный массив 
//который возвращается в глобальную область видимости со всеми необходимыми данными
function get_good_by_id($id)
{
	global $mysqli;

	$query = "SELECT * FROM goods WHERE good_id=" . $id;
	$req = mysqli_query($mysqli, $query);
	$resp = mysqli_fetch_assoc($req);

	return $resp;
}
