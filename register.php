<?php
include 'includes/header.php';
?>
<?php
					$check_login = Session::get('custumer_longin');
            if($check_login){
              echo "<script>window.location='checkout.php'</script>";
            }
              
	?>
<?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    $insertCustumers = $cs->insert_custumers($_POST);
  }
?>

<div class="container">

  <div class="card-body p-0">
    <!-- Nested Row within Card Body -->
    <div class="row">
      <div class="col-md-3">
      </div>
      <div class="col-md-6">
        <div class="p-5">
          <br>
          <!-- FORM-CONTROL -->
          <div>
            <?php if(isset($insertCustumers)){
              echo $insertCustumers;
              }
              ?>
          </div>
          <div class="text-center">
            <h3 class="text-gray-900 mb-5">Tạo Tài kHOẢN!</h3>
          </div>
          <form action="" method="POST">
            <table>
              <tbody>
                <tr class="row">

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">TÊN</label>
                      <input class="form-control" type="text" name="name" placeholder="Nhập Tên..">
                    </div>
                  </td>

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">Nơi ở</label>
                      <input class="form-control" type="text" name="city" placeholder="nƠI ở....">
                    </div>
                  </td>

                </tr>

                <tr class="row">

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">ma code</label>
                      <input class="form-control" type="text" name="zipcode" placeholder="Mã CODE...">
                    </div>
                  </td>

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">Email</label>
                      <input class="form-control" type="email" name="email" placeholder="email...">
                    </div>
                  </td>

                </tr>
                <tr class="row">

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">Địa Chỉ</label>
                      <input class="form-control" type="text" name="address" placeholder="Địa Chỉ....">
                    </div>
                  </td>

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">Quê Quán</label>
                      <input class="form-control" type="text" name="country" placeholder="Quê Quán....">
                    </div>
                  </td>

                </tr>

                <tr class="row">

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">Nhập số điện thoại</label>
                      <input class="form-control" type="number" name="phone" placeholder="Nhập Số diện thoại">
                    </div>
                  </td>

                  <td class="col-md-5">
                    <div class="form-group">
                      <label for="">Nhập mật khẩu</label>
                      <input class="form-control" type="password" name="password" placeholder="Nhập mật khẩu">
                    </div>
                  </td>

                </tr>

              </tbody>
            </table>
            <div class="form-group row">
              <div class="col-md-3">
              </div>
              <input type="submit" class="btn btn-primary col-md-6" name="submit" value="Gửi">
              <div class="col-md-3">
              </div>
            </div>
          </form>
        </div>
        <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"><a href="login.php"><< trở về trang Login</a></div>
        <div class="col-md-4"></div>
        </div>
        
      </div>
    </div>
  </div>
  <br>
</div>

<?php
include 'includes/footer.php';
?>