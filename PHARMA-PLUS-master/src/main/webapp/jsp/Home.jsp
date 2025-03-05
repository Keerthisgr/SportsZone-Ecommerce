<%@page import="com.protech.sportszone.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportsZone</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link rel="stylesheet" href="../css/Home.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>


<body>

<nav>
    <div id="part1">
       SportsZone
    </div>
    <div id="part2">
        <li><a href="/" id="part3">Home</a></li>
        <li><a href="/aboutus" id="part4">About Us</a></li>
        <li><a href="/customer/products" id="part5">Products</a></li>
        <%Customer customer=(Customer)session.getAttribute("customer");
                if(customer==null){
                %> 
        <li><a href="/customer/login"id="part6">Login</a></li>
        <li><a href="/customer/signup" id="part7">Signup</a></li>
           <%}else{%> 
             <div class="cart">
        <a href="/customer/cart" class="cart"><img src="data:image/jpeg;base64,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" alt="Cart" width="39em" height="39em" style="border-radius: 10em;"></a>   
    </div>
                <div id="log">
                    <a href="/logout">Logout</a>
                    
                </div>
                 <%} %> 
            </div>
           
        
        <div class="admin">

        <!-- </div> style="position: relative;left: 490px;top:6px"> -->
       
          <a href="/admin/login" class="admin" style="text-decoration: none;"> <img height="55px" width="55px" alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReF-weHUa-1_yNa2-graI2-2Iplv6nCNZoKN_xEd90yr46JrzJ2S4GdRGU-vVbvqqWdEs&usqp=CAU"></a>
      </div>
  </div> 
    </div>
    <!-- <div id="nav_child2">
		<form action="/customer/search" method="post">
		<input type="search" placeholder="Search" name="product"style="position: relative;right:290%;top:28px"><button href="" style="background-color: white;border:none; width: 25px; position: relative;right:305%;top: 28px;" >
	<i style="color: rgb(20, 20, 20); position: relative ;right:60%;z-index: 4;" class="fa-solid fa-magnifying-glass"></i>
		</button>
		</form>
		</div>                                                                                                                                                                                                                                                                                                                                                                                                   -->

</nav>
 <h1 id="successMessage" style="color:green">${pass}</h1>
<h1 id="failMessage" style="color:red">${fail}</h1>

<script>
    // Get the success and fail message elements
    var successMessage = document.getElementById("successMessage");
    var failMessage = document.getElementById("failMessage");

    // Check if the success message exists and display it as a pop-up alert
    if (successMessage.innerText !== "") {
        window.alert(successMessage.innerText);
        successMessage.style.display = "none"; // Hide the success message element
    }

    // Check if the fail message exists and display it as a pop-up alert
    if (failMessage.innerText !== "") {
        window.alert(failMessage.innerText);
        failMessage.style.display = "none"; // Hide the fail message element
    }
</script>

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://cdn.pixabay.com/photo/2020/04/11/15/49/treadmill-5030966_640.jpg" class="d-block w-100" alt="..." height="500px">
            <div class="carousel-caption d-none d-md-block">
              <h3>Fitness Products</h3>
              <p>Explore required products here..</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="https://media.istockphoto.com/id/949190736/photo/various-sport-equipments-on-grass.jpg?s=612x612&w=0&k=20&c=e5XgszJQciKRrqQECO9RPqLh7w1kkhNBFetf4742BF0=" class="d-block w-100" alt="..." height="500px">
            <div class="carousel-caption d-none d-md-block">
              <h3>Sports Requirements...</h3>
              <p>Explore more here....</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="https://cdn.pixabay.com/photo/2022/11/10/06/47/background-7582094_640.jpg" class="d-block w-100" alt="..." height="500px">
            <div class="carousel-caption d-none d-md-block">
              <h3>Say yes to yoga</h3>
              <p>Explore more products</p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <div class="parent1">
        <div id="child1">
            <h5>Trending in Fitness Collections</h5>
            </div>
            <div id="child2">
        <ul>
            <li><img src="https://contents.mediadecathlon.com/s1017220/k$2a8b5e679aba075c3d65d8d54adde4e2/Frame%20381.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Dumbbells</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1017218/k$511a4890d725f89c47632114bc3f17b5/Frame%20375.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Skipping Rope</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1017222/k$be34b92da8d1a98bc0cf96c8da44d1d8/Frame%20384.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Exercise Bikes</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1017214/k$b862c06504ad09246c88e0b7322c8165/Frame%20385.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Resistance Bands</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1017215/k$828e8969082a2893d5790c48c3fcb57a/Frame%20383.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Treadmills</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1017217/k$e370bba87476637cee694a48b955efec/Frame%20380.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Cross Trainer</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1017216/k$0bb3b0231aa67c4e4532330591bdf6bd/Frame%20382.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Yoga Mats</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1025304/k$bd1f924da3c34bdddce9ae97e9e9b1f9/Frame%20386.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Punching Bags</p></li>

        </ul>
      </div>
      <div class="parent2">
        <img src="https://contents.mediadecathlon.com/s1042136/k$fa14da31d9e1384e27f19212b58256fa/DPLAY%20%20web%20%201.jpg?format=auto&quality=70&f=1480x0">
      </div>
      <div class="parent3">
        <div id="child31">
          <h3>You May Like This</h3>
        </div>
        <div id="child32">
          <ul>
            <li><img src="https://cdn.pixabay.com/photo/2018/07/22/08/49/tennis-3554019_640.jpg" alt="" height="320px" width="320px"><h5>SportsZone</h5>Explore more items those are required <br>to maintain your fitness<br><br><a href="Read more">Read more</a></li>
            <li><img src="https://cdn.pixabay.com/photo/2020/08/25/11/10/chess-5516446_640.jpg" alt="" height="320px" width="320px"><h5>SportsZone</h5>Explore more items those are required <br>to maintain your calmness<br><br><a href="Read more">Read more</a></li>
            <li><img src="https://media.istockphoto.com/id/186157161/photo/sports-equipment-detail.jpg?s=612x612&w=0&k=20&c=uSQZzgmlRFm4kD6Ufl1Y5dDrHqffeR_UWMDLoHssYp4=" alt="" height="320px" width="320px"><h5>SportsZone</h5>Explore more items those are required <br>to maintain your fitness<br><br><a href="Read more">Read more</a></li>
          </ul>
        </div>
      </div>
      <div class="parent4">
        <img src="https://contents.mediadecathlon.com/s1038362/k$d413dccd1c0f33a9d4e5fc804596ed8e/NBA%20%20web.jpg?format=auto&quality=70&f=1480x0">
      </div>
      <div class="parent5">
        <div id="child51">
            <h5>Explore Top Categories</h5>
            </div>
            <div id="child52">
        <ul>
            <li><img src="https://contents.mediadecathlon.com/s1036169/k$f2c69967999ab3fe151b920d164e8a83/Frame%20427320897.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Helmets</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036166/k$b4bfa73944c6e9b5420c6d0564137a9e/Frame%20427320904.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Pumps</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036170/k$d993f7b6da104c1f6f4da1358a8d3173/Frame%20427320903.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Apparel</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036168/k$70769a415c4d32002cc337626dfe4adc/Frame%20427320898.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Locks</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036164/k$180e52bfd33962917b7a1b7d5a1458bb/Frame%20427320902.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Lights</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036163/k$d0d85ae69ab0428e60ad73c91eb40d87/Frame%20427320901.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Mudguards</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036165/k$522f37c77c0608d97264078049833e8a/Frame%20427320900.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Gloves</p></li>
            <li><img src="https://contents.mediadecathlon.com/s1036167/k$8eac4cfaa092d1196d2b0380720a1b0a/Frame%20427320899.png?format=auto&quality=70&f=440x0" alt="" height="150px" width="150px"><p>Seat & Covers</p></li>

        </ul>
      </div>
      <div class="parent6">
        <div id="child61">
          <ul>
            <li><img src="https://preview.colorlib.com/theme/capitalshop/assets/img/icon/services1.svg"><br><br><h6>Fast & Free Delivery<br></h6><p>Free delivery on all orders</p></li>
            <li><img src="https://preview.colorlib.com/theme/capitalshop/assets/img/icon/services2.svg"><br><br><h6>Secure Payment</h6><p>Free delivery on all orders</p></li>
            <li><img src="https://preview.colorlib.com/theme/capitalshop/assets/img/icon/services3.svg"><br><br><h6>Money Back Guarantee</h6><p>Free delivery on all orders</p></li>
            <li><img src="https://preview.colorlib.com/theme/capitalshop/assets/img/icon/services4.svg"><br><br><h6>Online Support</h6><p>Free delivery on all orders</p></li>

          </ul>
        </div>
      </div>
	  
	 
      <footer class="w-100 py-4 flex-shrink-0 position-relative top-60 my-3">
        <div class="container py-4">
            <div class="row gy-4 gx-5">
                <div class="col-lg-4 col-md-6">
                    <h5 class="h1 text-white">SportsZone</h5>
                    <p class="small text-muted">We offer a wide range of products, including:

<li style="color:rgb(108, 108, 108);">Fitness Products</li>
<li style="color:rgb(108, 108, 108);">Yoga Mats</li>
<li style="color:rgb(108, 108, 108);">Sports Wear</li>
<li style="color:rgb(108, 108, 108);">Sports Equipments</li>
<li style="color:rgb(108, 108, 108);">Gym Equipments</li></p>
                    
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-white mb-3">Quick links</h5>
                    <ul class="list-unstyled text-muted">
                        <li><a href="/" style="color:rgb(108, 108, 108);text-decoration: none;">Home</a></li>
                        <li><a href="/aboutus" style="color:rgb(108, 108, 108);text-decoration: none;">About</a></li>
                        <li><a href="/customer/products" style="color:rgb(108, 108, 108);text-decoration: none;">Products</a></li>
                        <li><a href="/customer/signup" style="color:rgb(108, 108, 108);text-decoration: none;">Signup</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-white mb-3">Customer Support</h5>
                    <ul class="list-unstyled text-muted">
                        <li><a href="#"style="color:rgb(108, 108, 108);text-decoration: none;">Telephone No:808168</a></li>
                        <li><a href="#"style="color:rgb(108, 108, 108);text-decoration: none;">What'sApp No:8088169847</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6" style="position: relative;left: 90px;">
                    <h5 class="text-white mb-3">Delivery</h5>
                    <p class="small text-muted"><li style="color:rgb(108, 108, 108);">Increased customer satisfaction</li>
                    <li style="color:rgb(108, 108, 108);">Free delivery costs</li>
                    <li style="color:rgb(108, 108, 108);">Improved efficiency</li>
                    <li style="color:rgb(108, 108, 108);">Enhanced reputation</li>
                    
                    </p>
                  
                        
                </div>
            </div>
        </div>
    </footer>
</div>
   



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>   
</body>
</html>

