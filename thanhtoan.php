<?php 
ob_start();
include'header.php';
 ?>
<?php 
if (isset($_POST['thanhtoan'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['name'];
    $address = $_POST['address'];
    $methodtt = $_POST['methodtt'];
    $yeucau = $_POST['yeucau'];
    $custormerid =  $_SESSION['id'];
    
    
$sqlInsert = "INSERT INTO orders(customer_id,name,email,phone,address,payment_method,request) VALUES('$custormerid','$name','$email','$phone','$address','$methodtt','$yeucau')";
 $res_order = mysqli_query($conn,$sqlInsert);
 if ($res_order) {
    $last_id = mysqli_insert_id($conn);
    // lưu chi tiết đơn hàng
    // ECHO $quantity = $gh['quantity']; DIE();
    foreach ($gio_hang as $gh) {

        $product_id= $gh['id'];
        $price = $gh['price'];
        $quantity = $gh['quantity'];
        $tong = (($gh['price'])*($gh['quantity']));
        $sql_insert_detail = "INSERT INTO order_detail(order_id,product_id,price,quantity,total) VALUES('$last_id','$product_id','$price','$quantity','$tong')";
         $res = mysqli_query($conn,$sql_insert_detail);
         if (isset($_SESSION['gio-hang'])) {
            unset($_SESSION['gio-hang']);
             
         }
         header('location: success.php');
        
 }
     } 


}

 ?>
<?php if(tong_so_luong() > 0) : ?>
<form id="form_tk" class="form_tk form_tt" method="post" style="width:698px" name="form_tt" action="" align="center" >
	<div class="heading">
    	<div class="tieude">
        	<h3>Thanh Toán Hóa Đơn</h3>
        </div>
    </div>
        <div class="form-group">
            <label for="">Họ Tên</label>
 <input type="text" class="form-control" name="name" value="<?php echo isset($_SESSION['name'])?$_SESSION['name']:"" ?>">
        </div>
   
         <div class="form-group">
            <label for="">Email</label>
 <input type="text" class="form-control" name="email" value="<?php echo isset($_SESSION['name'])?$_SESSION['email']:"" ?>">
        </div>
    
     <div class="form-group">
            <label for="">Số Điện Thoại</label>
<input type="text" class="form-control" name="phone" value="<?php echo isset($_SESSION['name'])?$_SESSION['phone']:"" ?>"  >
        </div>
    
     <div class="form-group">
            <label for="">Địa Chỉ</label>
<input type="text" class="form-control" id="" name="address" >
        </div>

         <div class="form-group">
            <label for="">Hình Thức Thanh Toán</label>
       <select name="methodtt" id="input" class="form-control" required="required">
           <option value="Thanh Toán Khi Nhận Hàng">Thanh Toán Khi Nhận Hàng</option>
           <option value="Thanh Toán Qua Thẻ">Thanh Toán Trực Tuyến</option>
       </select>
        </div>
    
     <div class="form-group">
            <label for="">Yêu Cầu</label>
            <textarea class="form-control" cols="20"  rows="5" name="yeucau"></textarea>
        </div>
        <button type="submit" class="btn btn-primary" name="thanhtoan">Thanh Toán</button>
    </form>
    <?php else: ?>
      
  
<?php endif ?>
  
<?php include'footer.php'; ?>


