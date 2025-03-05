 <%@page import="com.protech.sportszone.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us</title>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
         <link rel="icon" href="../images/favicon.ico">
        <link rel="stylesheet" href="../css/about.css">
       
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
                                                                                                                                                                                                                                                                                                                                                                                                         
    
    </nav>
       <div class="about">
        <div class="about-parent" style="position: relative; bottom: 30px; font-size: 25px;">  
    
    <div class="para"></div>
    </div></div>
    <div class="ip">
        <div class="chil">
            <img src="https://media.istockphoto.com/id/1136317339/photo/sports-equipment-on-floor.jpg?s=612x612&w=0&k=20&c=-aI8u_Se89IC-HJZYH724ei5z-bIcSvRW6qUwyMtRyE=" alt="" width="550px" height="350px">
        </div>
       <div class="par">
        <div class="ic">
            <h1>How we started?</h1>
            <p>Our website was started due to people who are facing <br>problems related to sports equipments which is out of stock <br>and to the people who are unable to explain  <br>about their choice.We decided to start our 
            <br> company called SportsZone and now we <br> are providing sports products at the <br>
             given time and there is no word for out of stock </p>
         </div> 
        </div>
    </div>
    <div class="chil2">
        <div class="chil4">
            <h1>Convinience</h1>
            <p>Heavy traffic, lack of parking, monsoons, shop closed, these are some of the reasons that could lead to skipping of some products those we are needed. place your order online and have your products delivered to you without leaving the comfort of your home.</p>
    </div>
        <div class="chil3"><img src="https://media.istockphoto.com/id/1220577245/photo/hand-to-hand-of-delivery-food-service-sending-delicious-from-restaurant-to-customer-without.jpg?b=1&s=170667a&w=0&k=20&c=5GdOziZwOvG3bf-_d20XCkuoEmRzh9geqQgVFObKLMo=" alt="" width="550px" height="350px"> 
        </div>
    </div>
    <div class="chil5">
    <div class="trust">
        <img src="https://cdn.pixabay.com/photo/2018/04/07/13/11/medicine-3298451_1280.jpg" alt="" width="550px" height="350px">
    </div>
    <div class="trust1">
        <h1>Trust</h1>
        <p>With the highest standards of ethical sports practice, We offer a superior online shopping experience, which includes ease of navigation and absolute transactional security.</p>
    </div>
    </div>
    <div class="parent2">
        <img src="https://contents.mediadecathlon.com/s1036014/k$108b0df8ea0bf35574a2700e3e1795a9/Football%20collection%20%20web.jpg?format=auto&quality=70&f=1480x0">
      </div>
    
    
    <div>
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
       
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>  
      
    </body>
    </html>