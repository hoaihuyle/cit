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
		<h3>DANH SÁCH DANH MỤC</h3>
		<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th style="text-align: left;">Tên Danh mục</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$result=mysqli_query($dbc,$getSQL["gCate"]);
					while($info=mysqli_fetch_array($result,MYSQLI_ASSOC))
					{
					?>
					<tr>
						<td><?php echo $info['name']; ?></td>
						<td align="center">
							<a href="edit_category.php?id=<?php echo $info['id'];?>">
								<img src="images/edit.png" width="16">
							</a>
						</td>

						<td align="center">
							<a href="delete_category.php?id=<?php echo $info['id'];?>" onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
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