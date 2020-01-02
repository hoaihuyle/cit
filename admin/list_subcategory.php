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
#example_wrapper { 
	position: relative;
}
tfoot {
	position: absolute;
	top: -50px;
	left: 25%;
}
tfoot tr th:first-child{
	display: none;
}
table.dataTable tfoot th select {
	width : 100% !important;
}
h5{
	margin-top: -16px;
	margin-left: 175px;
	margin-bottom: 22px;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<h3>DANH SÁCH CÔNG TY</h3>
		<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Mã</th>
					<th style="text-align: left;">Tên Sub Category</th>
					<th style="text-align: center;">Category</th>
					<th style="text-align: center;">Địa chỉ</th>
					<th style="text-align: center;">Ảnh</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$result=mysqli_query($dbc,$getSQL["gSub"]);
					while($info=mysqli_fetch_array($result,MYSQLI_ASSOC))
					{
					?>
					<tr>
						<td><?php echo $info['id']; ?></td>
						<td style="text-align: left;"><?php echo $info['name']; ?></td>
						<td style="text-align: center;">
						<?php 
							//Xử lý đưa ra tên menu cha
							print_r(display_name_cate_sub($info['id']));
						?>
						</td>
						<td style="text-align: center;">
						<?php 
							//Xử lý đưa ra tên menu cha
							print_r(display_name_add($info['id_address']));
						?>
						</td>
						<td><img width="100" src="<?php echo(!empty($info['files'])?'../upload/uploadCompany/thumb/'.$info['files']:'../lib/img/noimage.jpg')?>"></td>
						<td align="center">
							<a href="edit_subcategory.php?id=<?php echo $info['id'];?>">
								<img src="images/edit.png" width="16">
							</a>
						</td>

						<td align="center">
							<a href="delete_subcategory.php?id=<?php echo $info['id'];?>" onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
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