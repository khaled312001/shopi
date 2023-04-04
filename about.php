<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      

      <div class="content">
      <br>
      <h3>who are we?</h3>
      <br>
      <h2>Eng\ khaled ahmed</h2>
      <br>
<img src="images\unnamed.jpg" style="width: 4cm; height: 4cm;">

         <h3>why choose us?</h3>
         <p>Choosing us has many benefits, including:
         <br>
Quality products: We offer high-quality products that meet your needs and exceed your expectations.
<br>
Competitive prices: Our prices are competitive, and we strive to provide our customers with the best value for their money.
<br>
Customer service: We are dedicated to providing excellent customer service, and we are always available to assist you with any questions or concerns.
<br>
Fast and reliable shipping: We offer fast and reliable shipping to ensure that you receive your products as quickly as possible.
<br>
Secure payment options: We offer secure payment options to ensure that your personal and financial information is safe and protected.
<br>
Trusted reputation: We have a trusted reputation in the industry and have many satisfied customers who continue to choose us for their needs.
<br>
</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">client's reviews</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/pic-1.png" alt="">
         <p>I recently purchased a product from Shopie and I was really impressed with the overall experience. The website is easy to navigate, and the checkout process was smooth and hassle-free. The product arrived on time and in great condition. I highly recommend Shopie to anyone looking for a reliable online shopping platform.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>ahmed mohamed</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-2.png" alt="">
         <p>I was initially hesitant to shop online, but Shopie made the process so easy and convenient. The website is well-designed and the product descriptions are accurate. I also appreciate the fast delivery and excellent customer service. I'll definitely be shopping with Shopie again!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3> sara ali</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-3.png" alt="">
         <p>Shopie has a great selection of products at competitive prices. I've been a loyal customer for years and have never been disappointed. The website is user-friendly and the customer support team is always helpful and responsive.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3> mohamed khaled</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-4.png" alt="">
         <p>I had a fantastic experience shopping with Shopie. The website is very easy to use, and the products are of high quality. I also appreciate the fast shipping and secure payment options. I highly recommend this online store to anyone looking for a seamless shopping experience.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>hagar ahmed</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-5.png" alt="">
         <p>I recently had a problem with a product I purchased from Shopie, but the customer support team was able to quickly resolve the issue to my satisfaction. I appreciate the excellent service and would definitely recommend this online store to others.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>mahmoud abdallah</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-6.png" alt="">
         <p>Shopie is my go-to online shopping platform for all my needs. The website is well-organized, the prices are reasonable, and the delivery is always fast and reliable. I highly recommend Shopie to anyone looking for a great online shopping experience.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>mariam hamdy</h3>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>
