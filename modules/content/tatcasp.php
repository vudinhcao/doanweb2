
<div id="maincontent" class="col-xs-12 col-sm-8 col-md-12 ">

			<div  class="text-left">
                    <form action="index.php" method="get">
                    	<label>TÌM KIẾM NÂNG CAO:</label>
                        <input type="text" class="timnc" name="key" value="" placeholder="Nhập sản phẩm" id="tennc">
                        <span>GIÁ: </span>
                        <input type="text" name="giatu" placeholder="Giá từ" class="timnc" id="giatu" onkeyup="kiemtraso()">
                        <input type="text" name="giaden" placeholder="Giá đến" class="timnc" id="giaden" onkeyup="kiemtrasoden()">
                        <span>LOẠI: </span><select name="idL" class="timnc" id="loai">
                                <option value="0">TẤT CẢ</option>
                                <?php 
                                	$run_loai = mysqli_query($conn,"SELECT * FROM loaisanpham");
                                	while ($row = mysqli_fetch_array($run_loai)) {
                                		echo '<option value="'.$row['idLSP'].'">'.$row['tenloai'].'</option>';
                                	}
                                 ?>
                                
                        </select>
                        <button type="button" class="btn btn-info" onclick="timkiem()" name="xem" value="search" id="timkiemnc">Tìm kiếm</button>
                    </form>
                </div>
			<div class="boxmain">
		<?php 
			echo "<div class='tit-boxmain'>

							<h3><span>Sản phẩm mới </span></h3>
					</div>";
			echo "<div class='ct-boxmain row m0'>";
			// $conn = mysqli_connect("localhost","root","","shopbanquanao") or die("Kết nối thất bại");
			// require 'connect.php';
			$sql = "SELECT * FROM sanpham order by idSP desc";
			$run = mysqli_query($conn,$sql);
			$num = mysqli_num_rows($run);
			$i = 0;
			if($num > 0){
				while ($row = mysqli_fetch_array($run,MYSQLI_ASSOC)) {
					if($i < 8){
						echo "
							<div class='col-xs-6 col-sm-4 col-md-3 p5'>
								<div class='boxsp'>
			                		<div class='imgsp'>
			                			<a href='index.php?xem=chitietsanpham&id=$row[idSP]'><img class='imgproduct' src='admin/update/$row[hinhanh]''></a>
			                			<div class='img-label'>
			                				<img src='images/hot.png'>
			                			</div>
			                		</div>
			                		<div class='namesp'>
			                			<a href='#'>$row[tensp]</a>
			                		</div>
			                		<div class='pricesp'>".number_format($row['gia'],0,',','.')." VNĐ</div>
			                		<div class='button-hd'>
				                		<a href='javascript:void(0)' onclick='themgiohang($row[idSP])'><i class='fa fa-shopping-cart' aria-hidden='true'></i></a>
				                		<a href='index.php?xem=chitietsanpham&id=$row[idSP]'><i class='fa fa-eye' aria-hidden='true'></i></a>
				                	</div>
			                	</div>
							</div>
						";
					}
					$i++;
				}	
			}
			echo "</div>";
		 ?>
		 </div>
		 <div class="boxmain">
		<?php 
			echo "<div class='tit-boxmain'>

							<h3><span>Sản phẩm hot </span></h3>
					</div>";
			$run = mysqli_query($conn,$sql);
			$num = mysqli_num_rows($run);
			$i = 0;
			if($num > 0){
				while ($row = mysqli_fetch_array($run,MYSQLI_ASSOC)) {
					if($i > 8 && $i<21){
						echo "
							<div class='col-xs-6 col-sm-4 col-md-3 p5'>
								<div class='boxsp'>
			                		<div class='imgsp'>
			                			<a href='index.php?xem=chitietsanpham&id=$row[idSP]'><img class='imgproduct' src='admin/update/$row[hinhanh]''></a>
			                			<div class='img-label'>
			                				<img src='images/hot.png'>
			                			</div>
			                		</div>
			                		<div class='namesp'>
			                			<a href='#'>$row[tensp]</a>
			                		</div>
			                		<div class='pricesp'>".number_format($row['gia'],0,',','.')." VNĐ</div>
			                		<div class='button-hd'>
				                		<a href='javascript:void(0)' onclick='themgiohang($row[idSP])'><i class='fa fa-shopping-cart' aria-hidden='true'></i></a>
				                		<a href='index.php?xem=chitietsanpham&id=$row[idSP]'><i class='fa fa-eye' aria-hidden='true'></i></a>
				                	</div>
			                	</div>
							</div>
						";
					}
					$i++;
				}	
			}
			echo "</div>";
		 ?>
		 </div>
</div>
