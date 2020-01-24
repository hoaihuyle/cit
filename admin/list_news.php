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
		<h3 style="text-align: center;">DANH SÁCH BÀI VIẾT</h3><br><br><br>
		<h5>Chọn Loại bài:</h5>
		<table id="example" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th style="text-align: left;">Mã</th>
					<th style="text-align: center;">Loại bài</th>
					<th style="text-align: center;">Công ty</th>
					<th style="text-align: left;">Công việc</th>
					<th style="text-align: center;">Khu vực</th>
					<th style="text-align: left;">Tiêu Đề </th>
					<th style="text-align: center;">Hình ảnh</th>
					<th style="text-align: center;">Tình trạng</th>
					<th style="text-align: center;">Giá tiền</th>
					
					<!-- <th>Ảnh</th> -->
					<th>Thời gian</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$result=mysqli_query($dbc,$getSQL["sNews2"]);
				while($news=mysqli_fetch_array($result,MYSQLI_ASSOC))
				{

					?>
					<tr>
						<td style="text-align: left;"><?php echo $news['id']; ?></td>
						<td style="text-align: left;"><?php echo(display_type_post($news['id_type']));?>
						</td>
						<!-- <td style="text-align: left;"> -->
							<?php 
							// print_r(display_name_cate_news($news['id'],"<br>"));
							?>
						<!-- </td> -->
						<td style="text-align: left;">
							<?php 
								echo display_name_company($news['id']);

							?>
						</td>
						<td style="text-align: left;"><?php echo display_news_jobs($news['id']); ?></td>
						<td style="text-align: left;"><?php echo display_news_province($news['id']);?></td>
						<td style="text-align: center;"><?php echo $news['title']; ?></td>
						<td><img width="100" src="../upload/<?php echo(!empty($news['files'])?$news['files']:'noimage.png')?>"></td>
						<td><?php echo( (check_active_news($news['id'])?'Có':'Không') );?></td>
						<td style="text-align: center;">
							<?php 
								// echo(isset($news['end_pr'])?$news['start_pr'].'-'.$news['end_pr']:$news['start_pr'].' Nghìn VNĐ'); 
								echo(($news['price']!=0)?display_news_typesalary($news['id']):'Cần cập nhập');
							?>
							
						</td>
						<td>
						<?php 
							$stmt=$dbc->prepare($getSQL["sNewsActive"]);
							$stmt->bind_param("i",$news['id']);
							$stmt->execute();

							$results_tk = $stmt->get_result();
							if(mysqli_num_rows($results_tk)>0) {
								while($actives=mysqli_fetch_array($results_tk,MYSQLI_ASSOC)){
										$active = $actives['end_date'];
									}
							}

							if(isset($active))
							 echo $active;
							else echo "Không";
						?>
						 	
						 </td>
						<td align="center">
							<a href="edit_news.php?id=<?php echo $news['id'];?>">
								<img src="images/edit.png" width="16">
							</a>
						</td>

						<td align="center">
							<a href="delete_news.php?id=<?php echo $news['id'];?>" onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
								<img src="images/delete.png" width="16">
							</a> 
						</td>
					</tr>
					<?php

				}
				?>
			</tbody>
			<tfoot>
				<tr>
					<th></th>
					<th style="width: 486px !important;">name</th> 
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<!-- <script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script> -->

<script type="text/javascript">
	
	$(document).ready(function() {
		$('#example').DataTable( {
			initComplete: function () {
				this.api().columns().every( function () {
					var column = this;
					var select = $('<select><option value=""></option></select>')
					.appendTo( $(column.footer()).empty())
					.on( 'change', function () {
						var val = $.fn.dataTable.util.escapeRegex(
							$(this).val()
							);

						column
						.search( val ? '^'+val+'$' : '', true, false )
						.draw();
					} );

					column.data().unique().sort().each( function ( d, j ) {
						select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			}
		} );
	} );
</script>
<?php include('includes/footer.php');?>