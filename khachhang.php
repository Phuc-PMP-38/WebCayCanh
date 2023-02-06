<?php include'header.php'; ?>
<?php include'left_Profile.php'; ?>
<div class="col-xs-12 col-sm-9 col-md-9">
	

<div class="box-heading">
    
    <p> Thông Tin Tài Khoản</p>
</div>
<div>
</div>
<?php if(isset($_SESSION['name'])) : ?>
<div class="form_tk formthongtin" style="height:auto; width:698px">
	<div class="heading">
        
	</div>    
    <table class="thongtinkhachhang" width="60%">
        <tr>
        	<td class="right">Họ tên: </td>
            <td><?php echo isset($_SESSION['name'])?$_SESSION['name']:"" ?></td>
        </tr>
        <tr>
        	<td class="right">Email: </td>
            <td><?php echo isset($_SESSION['name'])?$_SESSION['email']:"" ?></td>
        </tr>
        <tr>
        	<td class="right">Số điện thoại: </td>
            <td><?php echo isset($_SESSION['name'])?$_SESSION['phone']:"" ?></td>
        </tr>
        <tr>
        	<td class="right">Ngày sinh: </td>
            <td><?php echo date($_SESSION['name'])?$_SESSION['birthday']:"" ?></td>
        </tr>
        <tr>
        	<td class="right">Giới tính: </td>
            <!-- <td><?= ($khachhang->Gioi_tinh=="1")?"Nam":"Nữ"?></td> -->
            <td><?php echo isset($_SESSION['gender'])==1?"Nam":"Nữ";?></td>
        </tr>
        <tr>
        	<td class="right">Địa chỉ: </td>
            <td><?php echo isset($_SESSION['name'])?$_SESSION['address']:"" ?></td>
        </tr>
    </table>
    </div>
<?php else: ?>
<script>alert('bạn chưa đăng nhập');</script>
 "<script> window.location = 'index.php' </script>"

<?php endif ?>
</div>
<?php include'footer.php'; ?>
