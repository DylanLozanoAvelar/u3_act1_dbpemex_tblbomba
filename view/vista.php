<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8" />
	<title>Modelo-vista-controlador</title>
</head>
<body>
	<h1>BASE DE DATOS bd_pemex</h1>
	<h2>TABLA tbl_bomba</h2>
	<h3>DYLAN LOZANO AVELAR</h3>
	<table border="1" cellspacing="0" width="1000px">
		<tr>
			<td style="padding: 5px; text-align: center"><strong>idBomba</strong></td>
			<td style="text-align: center"><strong>TipoBomba</strong></td>
			<td style="text-align: center"><strong>TipoCombustible</strong></td>
			<td style="text-align: center"><strong>Estado</strong></td>
			<td style="text-align: center"><strong>Capacidad</strong></td>
			<td style="text-align: center"><strong>Ubicacion</strong></td>
			<td style="text-align: center"><strong>NumeroEmpleados</strong></td>
			<td style="text-align: center"><strong>FechaRegistro</strong></td>
		</tr>
		<?php
			for($i=0;$i<count($pd);$i++)
			{
				?>
					<tr>
						<td style="padding: 5px; text-align: center"><?php echo $pd[$i]["idBomba"]; ?></td>
						<td style="text-align: center"><?php echo $pd[$i]["tipoBomba"]; ?></td>
						<td style="text-align: center"><?php echo $pd[$i]["tipoCombustible"]; ?></td>
						<td style="text-align: center"><?php echo $pd[$i]["estado"]; ?> </td>
						<td style="text-align: center"><?php echo $pd[$i]["capacidad"]; ?></td>
						<td style="text-align: center"><?php echo $pd[$i]["ubicacion"]; ?> </td>
						<td style="text-align: center"><?php echo $pd[$i]["numEmpleados"]; ?></td>
						<td style="text-align: center"><?php echo $pd[$i]["fechaRegistro"]; ?></td>
					</tr>
				<?php
			}
		?>
	</table>
</body>
</html>