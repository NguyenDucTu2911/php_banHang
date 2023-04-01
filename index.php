 <?php
	include 'includes/header.php';

	?>

 <div class="section">

 	<div class="container">

 		<div class="row">

 			<div id="hot-deal" class="section">
 				<!-- container -->
 				<div class="container">
 					<!-- row -->
 					<div class="row">
 						<div class="col-md-12">
 							<div class="hot-deal">
 								<ul class="hot-deal-countdown">
 								</ul>
 								<h2 class="text-uppercase">Giảm giá trong tuần</h2>
 								<p>Giảm Đến 50% </p>
 								<a class="primary-btn cta-btn" href="sale.php">Mua Ngay</a>
 							</div>
 						</div>
 					</div>

 					<!-- /row -->
 				</div>
 				<!-- /container -->
 			</div>

 			<div class="col-md-12">
 				<div class="section-title">
 					<h3 class="title">Sản Phẩm Mới</h3>
 				</div>
 			</div>

 			<div class="col-md-12">
 				<div class="row">
 					<div class="products-tabs">

 						<div id="tab1" class="tab-pane active">
 							<div class="products-slick" data-nav="#slick-nav-1">
 								<?php
									$getproduct_feathered_new = $product->getproduct_feathered_new();
									if ($getproduct_feathered_new) {
										while ($result = $getproduct_feathered_new->fetch_assoc()) {
									?>

 										<div class="product">
 											<div class="product-img">
 												<img height="180px" src="./admin/uploads/<?php echo $result['image'] ?>">
 												<div class="product-label">
 													<span class="new">Mới</span>
 												</div>
 											</div>
 											<div class="product-body">
 												<p class="product-category"><?php echo $result['Name']; ?></p>
 												<h3 class="product-name"><a href="productdetail.php?proid=<?php echo $result['ProductId'] ?>"><?php echo $result['productName']; ?></a></h3>
 												<?php
													if (($result['pricesale'] < $result['price']) && ($result['pricesale']) > 0) { ?>
 													<h4 class="product-price"><?php echo number_format($result['pricesale']) . " VNĐ"; ?></h4>
 													<del class="product-price"><?php echo number_format($result['price']) . " VNĐ"; ?></del></h4>
 												<?php } else { ?>
 													<h4 class="product-price"><?php echo number_format($result['price']) . " VNĐ"; ?></h4>
 													<h4 class="product-price">&nbsp;</h4>
 												<?php
													}
													?>
 												<div class="product-btns">
 													<button class="quick-view"><a href="productdetail.php?proid=<?php echo $result['ProductId'] ?>"><i class="fa fa-eye"></i></a><span class="tooltipp">xem chi tiết</span></button>
 												</div>
 											</div>

 										</div>

 								<?php
										}
									}
									?>
 							</div>
 							<div id="slick-nav-1" class="products-slick-nav"></div>
 						</div>

 					</div>
 				</div>
 			</div>

 		</div>

 	</div>

 </div>



 <div class="section">

 	<div class="container">

 		<div class="row">


 			<div class="col-md-12">
 				<div class="section-title">
 					<h3 class="title">Sản Phẩm Nổi bật</h3>
 				</div>
 			</div>

 			<div class="col-md-12">
 				<div class="row">
 					<div class="products-tabs">

 						<div id="tab1" class="tab-pane active">
 							<div class="products-slick" data-nav="#slick-nav-3">
 								<?php
									$getproduct_feathered = $product->getproduct_feathered();
									if ($getproduct_feathered) {
										while ($result = $getproduct_feathered->fetch_assoc()) {
									?>

 										<div class="product">
 											<div class="product-img">
 												<img height="180px" src="./admin/uploads/<?php echo $result['image'] ?>">
 												<div class="product-label">
 													<span class="new">Nổi bật</span>
 												</div>
 											</div>
 											<div class="product-body">
 												<p class="product-category"><?php echo $result['Name']; ?></p>
 												<h3 class="product-name"><a href="productdetail.php?proid=<?php echo $result['ProductId'] ?>"><?php echo $result['productName']; ?></a></h3>
 												<?php
													if (($result['pricesale'] < $result['price']) && ($result['pricesale']) > 0) { ?>
 													<h4 class="product-price"><?php echo number_format($result['pricesale']) . " VNĐ"; ?></h4>
 													<del class="product-price"><?php echo number_format($result['price']) . " VNĐ"; ?></del></h4>
 												<?php } else { ?>
 													<h4 class="product-price"><?php echo number_format($result['price']) . " VNĐ"; ?></h4>
 													<h4 class="product-price">&nbsp;</h4>
 												<?php
													}
													?>
 												<div class="product-btns">
 													<button class="quick-view"><a href="productdetail.php?proid=<?php echo $result['ProductId'] ?>"><i class="fa fa-eye"></i></a><span class="tooltipp">xem chi tiết</span></button>
 												</div>
 											</div>

 										</div>

 								<?php
										}
									}
									?>
 							</div>
 							<div id="slick-nav-3" class="products-slick-nav"></div>
 						</div>

 					</div>
 				</div>
 			</div>

 		</div>

 	</div>

 </div>

 <div class="section">

 	<div class="container">

 		<div class="row">


 			<div class="col-md-12">
 				<div class="section-title">
 					<h3 class="title">Sale Khủng</h3>
 				</div>
 			</div>

 			<div class="col-md-12">
 				<div class="row">
 					<div class="products-tabs">

 						<div id="tab2" class="tab-pane fade in active">
 							<div class="products-slick" data-nav="#slick-nav-2">

 								<?php
									$getproduct_feathered_sale = $product->getproduct_feathered_sale();
									if ($getproduct_feathered) {
										while ($result = $getproduct_feathered_sale->fetch_assoc()) {
											if ($result['pricesale'] < $result['price'] && ($result['pricesale'] > 0)) {
									?>

 											<div class="product">
 												<div class="product-img">
 													<img height="180px" src="./admin/uploads/<?php echo $result['image'] ?>">
 													<div class="product-label">
 														<span class="sale">Sale</span>
 														<span class="new">Nổi bật</span>
 													</div>
 												</div>
 												<div class="product-body">
 													<p class="product-category"><?php echo $result['Name']; ?></p>
 													<h3 class="product-name"><a href="productdetail.php?proid=<?php echo $result['ProductId'] ?>"><?php echo $result['productName']; ?></a></h3>
 													<?php
														if (($result['pricesale'] < $result['price']) && ($result['pricesale']) > 0) {
														?>
 														<h4 class="product-price"><?php echo number_format($result['pricesale']) . " VNĐ"; ?></h4>
 														<del class="product-price"><?php echo number_format($result['price']) . " VNĐ"; ?></del></h4>
 													<?php } ?>
 													<div class="product-rating"></div>
 													<div class="product-btns">
 														<button class="quick-view"><a href="productdetail.php?proid=<?php echo $result['ProductId'] ?>"><i class="fa fa-eye"></i></a><span class="tooltipp">xem chi tiết</span></button>
 													</div>
 												</div>

 											</div>

 								<?php
											}
										}
									}
									?>


 							</div>
 							<div id="slick-nav-2" class="products-slick-nav"></div>
 						</div>

 					</div>
 				</div>
 			</div>

 		</div>

 	</div>

 </div>
 <br>
 <br>
 <?php
	include 'includes/footer.php';
	?>