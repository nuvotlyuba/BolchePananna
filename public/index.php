<?php
require_once ".." . DIRECTORY_SEPARATOR . "app" . DIRECTORY_SEPARATOR . "config.php";
require_once 'core.php';


// echo $_SERVER['REQUEST_URI'];
// echo "Cтрока " . DIRECTORY_SEPARATOR. " в файле " .DIRECTORY_SEPARATOR;
$controller = isset($_GET['controller']) ? $_GET['controller'] : 'main';
$action = $_GET['action'] ?? 'index';
$params = $_GET['params'] ?? '';

// echo "<br> Controller: $controller";
// echo "<br> action: $action";
// echo "<br> params: $params";
$controller_name = "controllers/{$controller}_controller.php";

if (file_exists($controller_name)) {
	require_once $controller_name;
	if (function_exists($action)) {
		if ($params)
			$action($params);
		else
			$action();
	} else {
		// require_once 'not_ready.php';
	}
} else {
	require_once 'not_ready.php';
}
