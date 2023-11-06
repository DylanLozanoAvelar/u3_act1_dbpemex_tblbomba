<?php
class Bomba
{
	private $platillo;
	private $dbh;

	public function __construct()
	{
		$this->platillo = array();
		$this->dbh = new PDO('mysql:host=localhost;dbname=bd_pemex', "root", "");
	}

	private function set_names()
	{
		return $this->dbh->query("SET NAMES 'utf8'");
	}

	public function lista_bomba()
	{
		self::set_names();
		$sql="select * from tbl_bomba";
		foreach ($this->dbh->query($sql) as $res)
		{
			$this->platillo[]=$res;
		}
		return $this->platillo;
		$this->dbh=null;
	}
}
?>