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
		<h3>DANH SÁCH LOẠI BÀI</h3>
		<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Mã</th>
					<th style="text-align: left;">Tên loại post</th>
					<th style="text-align: center;">Mô tả</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$result=mysqli_query($dbc,$getSQL["gType"]);
					while($info=mysqli_fetch_array($result,MYSQLI_ASSOC))
					{
					?>
					<tr>
						<td><?php echo $info['id']; ?></td>
						<td style="text-align: left;">
							<?php echo(display_type_post_typepost($info['id'])); ?>
						</td>
						<td><?php echo $info['description']; ?></td>
						<td align="center">
							<a href="edit_post_type.php?id=<?php echo $info['id'];?>">
								<img src="images/edit.png" width="16">
							</a>
						</td>

						<td align="center">
							<a href="delete_info.php?id=<?php echo $info['id'];?>" onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
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