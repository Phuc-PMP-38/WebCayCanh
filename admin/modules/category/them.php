<?php 
include'../../../sql/connect.php';
if (isset($_POST['name'])) {
  $name = $_POST['name'];

  if(empty($name) ){
    $message = [
     'success' => false,
     'msg' => 'Không có dữ liệu'
   ];
   echo json_encode($message);
  }
  else{
  $sql_insert = "INSERT INTO category(name) VALUES('$name')";
  if (mysqli_query($conn,$sql_insert)) {
   $message = [
    'success' => true,
    'msg' => 'Thêm Mới Thành Công'
  ];
  echo json_encode($message);  }
  }
}else {
  $message = [
    'success' => false,
    'msg' => 'Thêm Mới Thất Bại Vui Lòng Thử Lại'
  ];
  echo json_encode($message);
}

?>