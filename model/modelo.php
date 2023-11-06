<?php
class Bomba
{
	private $bomba;
	private $dbh;

	public function __construct()
	{
		$this->bomba = array();
		$this->dbh = new PDO('mysql:host=localhost;dbname=bd_pemex', "root", "");
	}

	private function set_names()
	{
		return $this->dbh->query("SET NAMES 'utf8'");
	}

	public function lista_bomba()
	{
		self::set_names();
		$sql="select idBomba, tipoBomba, tipoCombustible, estado, capacidad, ubicacion, numEmpleados, fechaRegistro from tbl_bomba";
		foreach ($this->dbh->query($sql) as $res)
		{
			$this->bomba[]=$res;
		}
		return $this->bomba;
		$this->dbh=null;
	}
}
?>