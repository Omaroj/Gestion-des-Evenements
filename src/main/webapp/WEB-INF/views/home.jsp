<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Event Management System</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Full-page styling */
        body, html {
            height: 100%;
            margin: 0;
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
            
        }
        
        
        /*.bg{
        	background-color: blue;
        	background-image: url("../header-event-management.jpg");
        	background-size: cover;
        	width: 100vh;
        	height: 100vh;
        }*/
		
		.tite span {
		  font-size: 30px;
		  font-weight: bold;
		  color: #0077b6;
		  font-family: 'Poppins', sans-serif;
		}
		
		.tite{
		  font-size: 30px;
		  font-weight: bold;
		  color: black;
		  font-family: 'Poppins', sans-serif;
		}
		
		.tite:hover{
		  font-size: 30px;
		  font-weight: bold;
		  color: black;
		  font-family: 'Poppins', sans-serif;
		}
		
		.Ev{
			font-family: "arial", sans-serif;
			font-size: 25px;
			color: black;
			margin-top: 5px;
			margin-right: 8em;
		}
		
		.Ev:hover{
			color: #0077b6;
		}
		
        .container {
            text-align: center;
            padding-top: 3rem; 
        }

        /* Styled Heading at the Top */
        .heading {
            font-size: 2.5rem;
            color: #000;
            font-weight: bold;
            text-align: center;
            margin-bottom: 2rem;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        }

        .card-container {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 1rem;
            flex-wrap: wrap;
        }

        .card {
            width: 280px;
            padding: 1.5rem;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color: #ffffff;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card i {
            font-size: 3rem;
            color: #007bff;
            margin-bottom: 1rem;
        }

        .card-title {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: #333;
        }

        .btn-custom {
            margin-top: 1rem;
            width: 100%;
            padding: 0.75rem;
            font-size: 1.1rem;
            border-radius: 5px;
            color: #fff;
            font-weight: bold;
        }

        .btn-outline-primary {
		  display: inline-block;
		  padding: 0.3rem 1.1rem;
		  background: #0077b6;
		  color: #ffffff;
		  cursor: pointer;
		  border-radius: 2.5rem;
		  font-size: 20px;
		  text-transform: capitalize;
        }
        
        .btn-outline-primary:hover {
		  background: #ffffff00;
		  color: #0077b6;
		  outline: solid 1px #4f95ff;
		  outline-offset: -2px;
		  transition: 0.5s;
		}
		
		.btn-primary {
		  display: inline-block;
		  padding: 0.3rem 1.1rem;
		  background: #ffffff;
		  color: #0077b6;
		  cursor: pointer;
		  border-radius: 2.5rem;
		  font-size: 20px;
		  text-transform: capitalize;
        }
        
        .btn-primary:hover {
		  background: #0077b6;
		  color: #ffffff;
		  outline: solid 1px #4f95ff;
		  outline-offset: -2px;
		  transition: 0.5s;
		}

        .btn-register {
            background-color: #28a745;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .btn-register:hover {
            background-color: #218838;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .card-container {
                flex-direction: column;
                align-items: center;
            }
        }
        
        .head{
        	text-align: center;
        	align-content: center;
        	height: 700px;
        	background-image: url('https://zzeeh.com/wp-content/uploads/2024/06/what-is-event-management-and-its-types.jpg');
        	background-size: cover;
    		background-repeat: no-repeat;
    		place-items: center;
        }
        
        .head h1{
        	font-size: 80px;
		  font-weight: bold;
		  color: white;
		  font-family: 'Poppins', sans-serif;
		  text-shadow: 2px 4px #0077b6;
		  border: solid 1px white;
		  width: 70%;
		  background-color: rgba(0, 0, 0, 0.55);
		  border-radius: 20px;
		  padding: 10px 20px 10px 20px;
		  
        }
        
        
    </style>
    
    <nav class="navbar navbar-expand-lg bg-body-tertiary border-bottom">
	  <div class="container" style="padding-top: 0rem;">
	    
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="navbar-brand tite" href="/"><span>Gestion des</span> Evénements</a>
	        </li>
	      </ul>
	    </div>
	    <a class="navbar-brand Ev" style="" href="${pageContext.request.contextPath}/events">Evénements</a>
	    <a href="${pageContext.request.contextPath}/register">
		    <button type="button" class="btn btn-primary"
		        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
		  		S'inscrire
			</button>
		</a>
		<a href="${pageContext.request.contextPath}/login">
		<button onclick="${pageContext.request.contextPath}/login" type="button" class="btn btn-outline-primary"
	        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; margin-left: .5rem;">
	  		Connecter
		</button>
		</a>	  
	</div>
	</nav>
</head>
<body>
	<div class="head">
		<h1> Gestion des événements </h1>
	</div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
