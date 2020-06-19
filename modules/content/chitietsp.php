    <div class="thongbaosp"><h4>THÔNG TIN SẢN PHẨM<h4></div>
<div class="col-xs-12 col-sm-8 col-md-10 ">
        <?php 
                $id = $_GET['id'];
                $run = mysqli_query($conn,"SELECT * FROM sanpham where idSP = '$id'");
                while ($row=mysqli_fetch_array($run)) {
                    echo '
                        
                        <div class="col-xs-12 col-sm-6 col-md-7 " id="hinhsp">
                            <img src="admin/update/'.$row['hinhanh'].'">
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-5 " id="chitiets">
                            <div class="gia_full">
                                <label class="ten">'.$row['tensp'].'</label>
                                    <label class="giasp">'.number_format($row['gia'],0,',','.').' VNĐ
                                        <b class="giacu" style="text-decoration: line-through;">500.000đ</b>
                                    </label>
                            </div>
                            <div class="gia_full">
                                <p class="baohanh">Mô tả:</p>
                                <p>'.$row['mota'].'</p>
                            </div>
                            <form method="get" action="">
                            <label class="baohanh">Số lượng</label>
                            <div class="qty mt-5">
                                <input type="number" id="sl'.$row['idSP'].'" class="count"  name="qty" value="1" onchange="kiemtraslmua('.$row['idSP'].')">
                            </div>
                            <button type="button"" class="them"  id="ct" onclick="updateitem('.$row['idSP'].')">THÊM VÀO GIỎ HÀNG</button>
                            </form>
                            <label>Gọi đặt mua: 090 900 4191 (miễn phí từ 8:00-22:00)</label>
                        </div>
                    ';
                }
         ?>
</div>
<div class="col-md-2 ">
            <div class="panel panel-default">
                <div class="panel-heading" style="background: #c4ddc8;">
                    <h2 class="panel-title">
                        CHÍNH SÁCH BÁN HÀNG</h2>
                </div>
                <ul class="list-group">
                    <a href="#" class="list-group-item">1 Giao hàng toàn quốc</a>
                    <a href="#" class="list-group-item">2 Thanh toán khi nhận hàng</a>
                    <a href="#" class="list-group-item">3 Đổi trả trong 15 ngày</a>
                    <a href="#" class="list-group-item">4 Hoàn tiền mặt ngay</a>
                    <a href="#" class="list-group-item">5 Chất lượng đảm bảo</a>
                    <a href="#" class="list-group-item">6 Miễn phí vận chuyển</a>
                </ul>
            </div>
        </div>              
<div class="col-xs-12 col-sm-8 col-md-12">
            <div class="col-xs-12 col-sm-12 col-md-12 " id="thongtinsp">
                    <div class="col-xs-12 col-sm-6 col-md-8">                      
                        <img src="images/pic1.png">
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <p class="title" style="font-size: 30px;">Thông tin kỹ thuật : </p>
                        <p><span style="font-weight: bold;" >Vải: </span>  Dệt theo kĩ thuật Knit Jersey với thành phần cotton 94% đan 6% sợi spandex, giúp thấm hút tốt, đứng form, hạn chế nhăn và co dãn được 4 chiều.</p>                       
                        <p><span style="font-weight: bold;">Box logo: </span> Thêu</p>
                        <p><span style="font-weight: bold;">Chi tiết in: </span> Sử dụng kỹ thuật in kéo lụa với mực Plastisol.</p>
                        <p><span style="font-weight: bold;">Độ bền màu giặt: </span> A1S; 40 độ C (cấp): ISO 105-C06:2010 hay còn gọi là Colour fastness to domestic and commercial laundering (Độ bền màu với tẩy gia đình và tẩy thương mại).</p>
                        <p><span style="font-weight: bold;">Độ bền màu ánh sáng đèn: </span> Xenon: ISO 105 B02-2000 hay còn gọi là Colour fastness to artificial light: Xenon arc fading lamp test (Độ bền màu với ánh sáng nhân tạo: đèn Xenon).</p>
                        
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 " id="danhgia">
                    <hr style="height: 0px; border: none; border-top: 2px solid black;">
                    <div class="thongbaosp"><h4>TIN TỨC<h4></div>
                    <img src="images/tintuc1.png">
                    <img src="images/tintuc2.jpg">

                    <h3>BST WESTSIDE - KHU PHÍA TÂY</h3>
                    <p>Bộ sưu tập Westside nói về những người miền Tây chân chất và thật thà.</p>                   
                    <p>
                         Họ coi nhẹ tiền bạc, trọng tình trọng nghĩa, là những con người thật lòng thật dạ, ấm áp nghĩa tình. Nét đặc trưng tính cách của những người con miền sông nước ấy không khỏi làm chúng tôi cảm thấy yêu mến.
                        Và tôi có duyên gặp cô. Một cô bé quê ở Miền Tây, lên thành phố học tập và sinh sống. Giọng nói ngọt ngào, đặc trưng không lẫn đi đâu được. Bên ngoài nhìn cô hiền lành, mộc mạc nhưng ẩn chứa bên trong là một tâm hồn vô cùng… “ngầu đời” và cá tính. Cô thích nhảy, mang trong mình một niềm đam mê Hiphop mãnh liệt.
                    </p>
                    <p>
                        Thế nhưng dù niềm đam mê vẫn ở đó, cô không cảm thấy hạnh phúc. Tâm sự với tôi, cô nói rằng mình không hòa nhập được với cộng đồng và mọi người xung quanh.
                    </p>                    
                    <hr style="height: 0px; border: none; border-top: 2px solid black;">                                        
                </div>
</div>