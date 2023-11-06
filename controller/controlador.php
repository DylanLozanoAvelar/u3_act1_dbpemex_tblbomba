<?php
	require_once("../model/modelo.php");
	$menu = new Bomba();
	$pd = $menu->lista_bomba();
	require_once("../view/vista.php");
?>