<?php
include './includes/header.php';
?>

<div class="container">

  <!-- Outer Row -->
  <div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">

      <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-md-4"></div>
            <div class="col-lg-4">
              <br>
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-2">Bạn có muốn đặt lại mật khẩu?</h1>
                  <p class="mb-4"></p>
                </div>
                <form class="user">
                  <div class="form-group">
                    <input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                  </div>
                  <a href="login.php" class="btn btn-primary btn-user btn-block">
                    Quên Mật khẩu
                  </a>
                </form>
                <hr>
                <div class="text-center">
                  <a class="small" href="register.php">Tạo Tài Khoản!</a>
                </div>
                <div class="text-center">
                  <a class="small" href="login.php">bạn đã có tài khoản? Đăng Nhập!</a>
                </div>
                <br>
              </div>
            </div>
            <div class="col-md-4"></div>
          </div>
        </div>
      </div>

    </div>

  </div>

</div>

<?php
include './includes/footer.php';
?>