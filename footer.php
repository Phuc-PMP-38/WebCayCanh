     
 <footer class="nb-footer">
<div class="container">
<div class="row">


<div class="col-md-3 col-sm-6">
<div class="footer-info-single">
	<h2 class="title">Hỗ trợ khách hàng</h2>
	<ul class="list-unstyled">
		<li><a href="#" title=""><i class="fa fa-angle-double-right"></i> Hướng dẫn mua hàng online</a></li></br>
		Miễn Phí Giao Hàng -Cho Đơn Hàng Trên : 500.000 Vnd</br>
	</ul>
</div>
</div>

<div class="col-md-3 col-sm-6">
<div class="footer-info-single">
	<h2 class="title">Thông Tin Liên Hệ</h2>
	<ul class="list-unstyled">
		<li><a href="#" title=""><i class="fa fa-angle-double-right"></i> Thông tin liên hệ</a></li>
		<li><a href="about.php" title=""><i class="fa fa-angle-double-right"></i> Giới thiệu về chúng tôi</a></li>
		Địa Chỉ Giao Dịch : Hà Nội</br>
		Fax : +84 0976972771 </br>
		Email : admin@gmail.com
	</ul>
</div>
</div>

<div class="col-md-3 col-sm-6">
<div class="footer-info-single">
	<h2 class="title">Phương Phức Thanh Toán</h2>
	 <a href=""><img src="img/hhhhh.png" alt="shopping image" /></a>
	
</div>
</div>
</div>
</div>
</footer>
</body>
</html>
</footer>

        <!-- FOOTER-TOP-AREA END -->
        <!-- COPYRIGHT-AREA START -->
      
        <!-- COPYRIGHT-AREA END -->
		<!-- JS 
			===============================================-->
			  <script src="js/jquery.min.js"></script>
    <script>
        jQuery.noConflict();
    </script>
    
    <script src="js/owl.carousel.js"></script>
    <script src="js/resize.js"></script>
    <script src="js/off-canvas.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/custom.js"></script>
			<!-- jquery js -->
			<script src="js/vendor/jquery-1.11.3.min.js"></script>

			<!-- fancybox js -->
			<script src="js/jquery.fancybox.js"></script>

			<!-- bxslider js -->
			<script src="js/jquery.bxslider.min.js"></script>

			<!-- meanmenu js -->
			<script src="js/jquery.meanmenu.js"></script>

			<!-- owl carousel js -->
			<script src="js/owl.carousel.min.js"></script>
<!-- <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" ></script> -->
			<!-- nivo slider js -->
			<script src="js/jquery.nivo.slider.js"></script>

			<!-- jqueryui js -->
			<script src="js/jqueryui.js"></script>

			<!-- bootstrap js -->
			<script src="js/bootstrap.min.js"></script>

			<!-- wow js -->
			<script src="js/wow.js"></script>		
			
		
			<!-- main js -->
			<script src="js/main.js"></script>
			<script type="text/javascript" src="js/jaxgh.js"></script>
		    <script src="js/jquery.validate.min.js"></script>
		   <script src="js/check.js"></script>
		   <script src="js/jquery.flexslider.js"></script>
		   <script src="js/custom.js"></script>
		  <script>
       // jQuery for flexslider------------------
       jQuery(window).load(function() {
           // The slider being synced must be initialized first
           jQuery('#carousel').flexslider({
               animation: "slide",
               controlNav: false,
               animationLoop: false,
               slideshow: false,
               directionNav: false,
               autoHeight: true,
               itemWidth: 80,
               itemMargin: 80,
               asNavFor: '#slider'
           });

           jQuery('#slider').flexslider({
               animation: "slide",
               controlNav: false,
               animationLoop: false,
               directionNav: false,
               autoHeight: true,
               slideshow: false,
               sync: "#carousel"
           });

       });
   </script>
	<script>
        var phone = jQuery('#mainbody_contentbody_reg_phone');
                phone_pattern = /^(\+84|0)((1([0-9]{9}))|(9([0-9]{8}))|(8([0-9]{8})))$/;
                if (phone.val() != "" && !phone.val().match(phone_pattern)) {
                    phone.addClass('validation-failed');
                    jQuery('#register_error').html('Số điện thoại không hợp lệ.');
                    phone.focus();
                    return false;
                }
                // if (jQuery('#chkRequirement').is(":checked") == false) {
                //     jQuery('#register_error').html('Bạn phải đồng ý với điều khoản sử dụng.');
                //     return false;
                // }
                // if (jQuery('#register_error').html() != '') {
                //     return false;
                // } else {
                //     return true;
                // }
    </script>
   
		  
		 
		</body>
					

		</html>