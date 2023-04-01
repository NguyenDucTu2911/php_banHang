<?php
include './includes/header.php';
?>
<?php 
$check_login = Session::get('custumer_longin');
if ($check_login == false) {
    echo "<script>window.location='login.php'</script>";
}else {
    $id = Session::get("custumer_id");
    $check_order = $ct->get_order_custumer($id);
}
if ($check_order == false) {
    echo "<script>window.location='cart.php'</script>";
}
?>
<div class="container">
    <div class="row">
        <br>
        <div class="jumbotron text-center">
            <a class="display-3 alert alert-success"> Đặt Hàng Thành Công!
            </a>
            <p class="lead"> <br><strong>Cám Ơn <?php echo $custumerName?>! Bạn mua sản phẩm trong trang web của tôi </strong>. Vui lòng kiểm tra đơn Đặt hàng trong này!</p>
            <hr>
            <p class="lead">
                <a class="btn btn-primary btn-sm" href="orderdetail.php" role="button">
Kiểm tra đơn hàng của tôi</a>
            </p>
        </div>
    </div>
</div>
<?php
include './includes/footer.php';
?>