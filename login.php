 <?php
  include 'includes/header.php';
  ?>
  <?php 
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    $loginCustumers = $cs->login_custumers($_POST);
  }
  ?>
  <?php
					$check_login = Session::get('custumer_longin');
            if($check_login){
              echo "<script>window.location='checkout.php'</script>";
            }
              
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
             <div class="col-md-4">
               <div class="p-5">
                 
                 <div class="text-center">
                   <h1 class="h4 text-gray-900 mb-4">ĐĂNG NHẬP!</h1>
                 </div>
                 <div>
                   <?php if(isset($loginCustumers)){
                     echo $loginCustumers;
                  }
                     ?>
                 </div>
                 <form action="" method="POST">
                   <div class="form-group">
                     <input type="email" name="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Email.">
                   </div>
                   <div class="form-group">
                     <input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Mật Khẩu">
                   </div>
                   <div class="form-group">
                     <div class="custom-control custom-checkbox small">
                       <input type="checkbox" class="custom-control-input" id="customCheck">
                       <label class="custom-control-label" for="customCheck">Lưu mật khẩu</label>
                     </div>
                   </div>
                   <input type="submit" name="submit" class="btn btn-primary btn-user btn-block" value="Đăng Nhập">
                 </form>
                 <hr>
                 <div class="text-center">
                   <a class="small" href="forgot-password.php">Quên Mật Khẩu?</a>
                 </div>
                 <div class="text-center">
                   <a class="small" href="register.php">Tạo Tài Khoản!</a>
                 </div>
               </div>
              <br>
              </div>
             <div class="col-md-4"></div>
           </div>
         </div>
       </div>

     </div>

   </div>

 </div>

 <!-- Bootstrap core JavaScript-->
 <?php
  include 'includes/footer.php';
  ?>