<?php
	require_once("../model/modelo.php");
	$lista = new Bomba();
	$pd = $lista->lista_bomba();
	require_once("../view/vista.php");
?>