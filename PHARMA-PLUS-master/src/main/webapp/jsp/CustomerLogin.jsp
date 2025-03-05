<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.protech.sportszone.dto.Customer"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
* {
	padding: 0;
	margin: 0;
}

#parent {
	display: flex;
	justify-content: end;
	background-color: rgba(27, 27, 27, 2);
	height: 50px;
	width: 100%;
	position: sticky;
	top: 0px;
	z-index: 2;
	align-items: center;
}

.admin {
	color: beige;
	position: relative;
	left: -20px;
}

.admin:hover {
	color: red;
}

.parent1 {
	display: flex;
	justify-content: center;
	background-color: black;
	height: 100px;
	align-items: center;
	position: sticky;
	top: 50px;
	z-index: 10
}

.child1 {
	color: white;
	position: relative;
	left: -15rem;
}

#child2 {
	width: 50%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 20px;
	font-family: 'Times New Roman', Times, serif;
}


.login{
	height: 500px;
	
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	top:14%;
	right:18%;
}


.tab {

	border: 2px solid black;
	background-color: white;
	padding: 60px;
	
}

input[id="user"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
	
}
input{
	
}

input[id="password"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
}

body{
	background-image: url("https://cdn.pixabay.com/photo/2014/10/14/20/24/football-488714_640.jpg");
    background-repeat: no-repeat;
	background-size: 100% 100vh;
}
::placeholder{
	position: relative;
	left: 10px;
	color: black;
	font-weight: 400;
}
</style>
</head>
<body>


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

	
	
	<div class="login" >
		<form action="/customer/login" method="post">
		
			<table class="tab"
				style="height: 500px; width: 350px ; border-radius: 10px;background-image: linear-gradient(to bottom right,rgb(230, 162, 162),rgb(150, 65, 65));">
				
				<tr>
				<td>
					<button style="width: 15%;height: 100%;;position: relative;right:24%; bottom:60px;font-weight: 700;border-radius: 5px;" title="Back"><a href="/" style="text-decoration: none;"><---</a></button>
				</td>
			</tr>
				<tr>
					<th>${fail}</th>
				</tr>

				<tr>
					<th
						style="font-size: 20px; font-style: normal; text-align: center; ">USER
						LOGIN</th>
				</tr>
				<tr>
					<td>
						<h1 style="font-size: 15px;position: relative;top: 35%;">USERNAME</h1>
					</td>
				</tr>
				<tr>
				 

					<td><input type="text" name="user" id="user"
						placeholder="Enter email/mobile"
						style="width: 250px;position: relative;bottom: 15%; height: 35px; font-size: 12px; background-color: lightgoldenrodyellow;">
					</td>

				</tr>
				<tr>
					<td>
						<h1 style="font-size: 15px;position: relative;bottom:29%">PASSWORD</h1>
					</td>
				</tr>
				<tr>
					<td><input type="password" name="password" id="password"
						placeholder="password"
						style="width: 250px;position: relative;bottom: 50%; height: 35px; font-size: 12px; background-color: lightgoldenrodyellow;">
					</td>
				</tr>
				<tr>
					<td>
						<button
							style="width: 200px; height: 35px;position: relative;outline: 2px solid black;bottom: 50%;left: 10%; background-color:cadetblue; border-style: none; border-radius: 2px;font-weight: 700;" >Login</button>
					</td>
				</tr>
            <tr>
				<td>
				</td>
			</tr>
			<tr>
				<td>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<button style="width: 80%;height: 100%;background-color:cadetblue;position: relative;left: 10%;top: 5px;font-weight: 700;border-radius: 5px;"><a href="/customer/signup" style="text-decoration: none;color: black;font-weight: bold;">Signup</a></button>
				</td>
			</tr>
			</table>
			
		</form>
		
	</div>
	
</body>