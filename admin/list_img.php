<?php 
include('includes/header.php');
include('inc/myconnect.php');
include('inc/function.php');
include('../sysenv.php'); 
?>
<style type="text/css">
th {
	text-align: center;
}
td {
	text-align: center;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<h3>DANH SÁCH HÌNH ẢNH</h3>
		<table id= "example" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Mã</th>
					<th style="text-align: left;">Tiêu Đề</th>
					<th>Ảnh</th>
					<th>Thời Gian</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<?php
				// $query="SELECT p.id, m.name, p.title, p.files, p.timestamp FROM products p INNER JOIN menu m on p.menu_id=m.id WHERE m.parent_id = 2 ORDER BY id ASC";
				$result=mysqli_query($dbc,$getSQL["gImg"]);
				while($news=mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					?>
					<tr>
						<td><?php echo $news['id']; ?></td>
						<td style="text-align: left;"><?php echo $news['title']; ?></td>
						<td><img width="50" src="../upload/<?php echo $news['file_name']; ?>"/></td>
						<td><?php echo $news['timestamp']?></td>
						<td align="center">
							<a href="edit_img.php?id=<?php echo $news['id'];?>">
								<img src="images/edit.png" width="16">
							</a>
						</td>

						<td align="center">
							<a href="delete_img.php?id=<?php echo $news['id'];?>" onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
								<img src="images/delete.png" width="16">
							</a>
						</td>
					</tr>
					<?php
				}
				?>  
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script>
<?php include('includes/footer.php');?>