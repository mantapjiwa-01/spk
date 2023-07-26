<?php
include "config.php";
session_start();
if(!isset($_SESSION['username'])){
	?>
	<script>window.location.assign("login.php")</script>
	<?php
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Halaman Dashboard</title>
    <link href="css/metro.css" rel="stylesheet">
    <link href="css/metro-icons.css" rel="stylesheet">
    <link href="css/metro-schemes.css" rel="stylesheet">
    <link href="css/metro-responsive.css" rel="stylesheet">
</head>
<body>
    <div class="app-bar">
		<a class="app-bar-element" href="..."><marquee direction="left" scrollamount="2"><b>PENILAIAN KEPUASAN SISWA SMAN 19 KABUPATEN TANGERANG TERHADAP BIMBINGAN KONSELING</b></marquee></a>
		
		<a href="logout.php" class="app-bar-element place-right">Logout</a>
	</div>
	
	<div style="padding:5px 20px;">
		<div class="grid">
			<div class="row cells5">
				<div class="cell">
				
					<ul class="v-menu" style="border:1px solid blue">
						<li class="menu-title">Dashboard</li>
						<li><a href="index.php"><span class="mif-books icon"></span> Diagram Perangkingan</a></li>
						<li class="divider"></li>
						<li class="menu-title">Menu</li>
						<li><a href="perangkingan.php"><span class="mif-books icon"></span> Analisa SPK SMART</a></li>
						<li><a target="_blank" href="laporan.php"><span class="mif-file-pdf icon"></span> Laporan</a></li>
						<li class="divider"></li>
						<li class="menu-title">Pengguna</li>
						<li><a href="ubahpassword.php"><span class="mif-key icon"></span> Ubah Password</a></li>
						<li><a href="logout.php"><span class="mif-cross icon"></span> Logout</a></li>
					</ul>
				
				</div>
				<div class="cell colspan4">
				
					<div style="padding:10px 15px;border:1px solid blue;background:white;">