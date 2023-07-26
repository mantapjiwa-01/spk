<?php
include "header.php";
$page = isset($_GET['page'])?$_GET['page']:"";
?>
<div class="row cells4">
	<div class="cell colspan2">
		<h3>Data Siswa</h3>
	</div>
<?php
if($page=='form'){
?>
	<div class="cell colspan2 align-right">
		<a href="datasiswa.php" class="button info">Kembali</a>
	</div>
</div>
	<p></p>
	<?php
		if (isset($_POST['simpan'])) {
			$nama = $_POST['nama'];
			$nisn = $_POST['nisn'];
			$klas = $_POST['kelas'];
			$stmt2 = $db->prepare("insert into smart_siswa values('',?,?,?)");
			$stmt2->bindParam(1, $nama);
			$stmt2->bindParam(2, $nisn);
			$stmt2->bindParam(3, $klas);
			if ($stmt2->execute()) {
?>
		<script type="text/javascript">
			location.href = 'datasiswa.php'
		</script>
	<?php
			} else {
	?>
		<script type="text/javascript">
			alert('Gagal menyimpan data')
		</script>
	<?php
			}
		}
		if (isset($_POST['update'])) {
			$klas = $_POST['kelas'];
			$id = $_POST['id_siswa'];
			$nama = $_POST['nama'];
			$nisn = $_POST['nisn'];
			$stmt2 = $db->prepare("update smart_siswa set nama_siswa=?, nisn=?, id_siswa=? where id_siswa=?");
			$stmt2->bindParam(1, $nama);
			$stmt2->bindParam(2, $nisn);
			$stmt2->bindParam(3, $klas);
			$stmt2->bindParam(4, $id);
			if ($stmt2->execute()) {


	?>
		<script type="text/javascript">
			location.href = 'subkriteria.php'
		</script>
	<?php
			} else {
	?>
		<script type="text/javascript">
			alert('Gagal mengubah data')
		</script>
<?php
			}
		}
?>
	<form method="post">
		<label>Data Siswa</label>
		<div class="input-control text full-size">
		    <input type="text" name="nama" placeholder="Nama Siswa" value="<?php echo isset($_GET['nama'])? $_GET['nama'] : ''; ?>">
		</div>
        <label>NISN</label>
		<div class="input-control text full-size">
		    <input type="number" name="nisn" placeholder="NISN" value="<?php echo isset($_GET['nisn'])? $_GET['nisn'] : ''; ?>">
		</div>
        <label>Kelas</label>
		<div class="input-control text full-size">
		    <input type="text" name="kelas" placeholder="Kelas" value="<?php echo isset($_GET['kelas'])? $_GET['kelas'] : ''; ?>">
		</div>
		<?php
		if (isset($_GET['id_siswa'])) {
			?>
			<button type="submit" name="update" class="button warning">Update</button>
			<?php
		} else{
			?>
			<button type="submit" name="simpan" class="button primary">Simpan</button>
			<?php
		}
		?>
	</form>
<?php
} else if($page=='hapus'){
?>
	<div class="cell colspan2 align-right">
	</div>
</div>
<?php
		if (isset($_GET['id_siswa'])) {
			$stmt = $db->prepare("delete from smart_siswa where id_siswa=$id'" . $_GET['id_siswa'] . "'");
			if ($stmt->execute()) {
	?>
	 		<script type="text/javascript">location.href='datasiswa.php'</script>
	 		<?php
	 	}
	}
} else{
?>
	<div class="cell colspan2 align-right">
		<a href="?page=form" class="button primary">Tambah</a>
	</div>
</div>
<table class="table striped hovered cell-hovered border bordered dataTable" data-role="datatable" data-searching="true">
	<thead>
		<tr>
			<th width="50">No</th>
			<th>Nama Siswa</th>
			<th>NISN</th>
			<th>Kelas</th>
			<th width="240">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$stmt = $db->prepare("select * from smart_siswa where id_siswa");
		$stmt->execute();
        $no = 1;
		while($row = $stmt->fetch()){
		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $row['nama_siswa'] ?></td>
			<td><?php echo $row['nisn'] ?></td>
			<td><?php echo $row['kelas'] ?></td>
			<td class="align-center">
				<a href="?page=form&id=<?php echo $row['id_siswa'] ?> &nama=<?php echo $row['nama_siswa'] ?>" class="button warning"><span class="mif-pencil icon"></span> Edit</a>
				<a href="?page=hapus&id=<?php echo $row['id_siswa']; ?>" class="button danger"><span class="mif-cancel icon"></span> Hapus</a>
			</td>
		</tr>
		<?php
		}
		?>
	</tbody>
</table>
<p><br/></p>
<?php
}
include "footer.php";
?>
					
					