<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Account</title>
<style>
body {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	background-color: white;
	font-family: "lato", sans-serif;
}

.signupFrm {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form {
	background-color: white;
	width: 400px;
	border-radius: 6px;
	padding: 20px 40px;
	box-shadow: 0 8px 20px rgba(92, 99, 105, .2);
}

.title {
	font-size: 40px;
	text-align: center;
	text-transform: uppercase;
}

.inputContainer {
	position: relative;
	height: 45px;
	width: 100%;
	margin-bottom: 17px;
}

.input {
	position: absolute;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 100%;
	border: 1px solid #DADCE0;
	border-radius: 7px;
	font-size: 16px;
	padding: 0 20px;
	outline: none;
	background: none;
	z-index: 1;
}

.label {
	position: absolute;
	top: 15px;
	left: 15px;
	padding: 0 4px;
	background-color: white;
	color: #DADCE0;
	font-size: 16px;
	transition: 0.5s;
	z-index: 0;
}

.submitBtn {
	width: 100%;
	border: none;
	outline: none;
	background-color: #27ae60;
	color: white;
	border-radius: 4px;
	cursor: pointer;
	font-size: 20px;
	margin-top: 20px;
	padding: 7px 15px;
	text-transform: uppercase;
	font-weight: 600;
	letter-spacing: 1px;
}

.submitBtn:hover {
	background-color: #219150;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
}

.submitBtn:active {
	transform: translateY(-2px);
}

.input:focus+.label {
	top: -7px;
	left: 10px;
	z-index: 10;
	font-size: 14px;
	font-weight: 600;
	color: purple;
}

.input:focus {
	border: 2px solid purple;
}

.input:not(:placeholder-shown)+.label {
	top: -7px;
	left: 10px;
	z-index: 10;
	font-size: 14px;
	font-weight: 600;
}

.radiocontainer {
	font-size: 18px;
	text-transform: uppercase;
	border: 1px solid #DADCE0;
	border-radius: 7px;
	background-color: purple;
	color: #fff;
	font-weight: 500;
	letter-spacing: 1.5px;
}

.inputradio {
	margin-left: 80px;
	margin-top: 16px;
}
</style>
</head>
<body>
	<div class="signupFrm">
		<form action="/register" method="post" class="form">
			<h1 class="title">
			<h1 style="color: red;">Create Account</h1>
				<h1>

					<div class="inputContainer">
						<input type="number" class="input" name="id" placeholder="." required>
						<label for="" class="label">Id</label>
					</div>

					<div class="inputContainer">
						<input type="text" class="input" name="name" placeholder="." required>
						<label for="" class="label">Name</label>
					</div>

					<div class="inputContainer">
						<input type="text" class="input" name="role" placeholder="." required>
						<label for="" class="label">Role</label>
					</div>

					<div class="inputContainer">
						<input type="text" class="input" name="mobile" 	placeholder="." required> 
						<label for="" class="label">Mobile</label>
					</div>


					<div class="inputContainer">
						<input type="text" class="input" name="manager" placeholder="." required>
						<label for="" class="label">Manager</label>
					</div>
					<div class="inputContainer">
						<input type="text" class="input" name="office" placeholder="." required>
						<label for="" class="label">Office</label>
					</div>
					<div class="inputContainer">
						<input type="text" class="input" name="join" placeholder="." required>
						<label for="" class="label">Join Date</label>
					</div>
					<a href="/">Home</a>
                    <input type="submit" class="submitBtn" value="Sign up">
					
		</form>
	</div>
</body>
</html>