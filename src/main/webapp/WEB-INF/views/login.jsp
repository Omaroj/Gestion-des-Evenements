<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
        	margin: auto;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f7f8fc;
            font-family: Arial, sans-serif;
        }
        
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

        .login-container {
        	margin-top: 6em;
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            border: solid 1px #0077b6;
        }
        
        .login-container:hover {
        	-webkit-box-shadow: 0px 0px 37px -3px #0077b6;
			-moz-box-shadow: 0px 0px 37px -3px #0077b6;
			box-shadow: 0px 0px 37px -3px #0077b6;
  			transform: scale(1.02, 1.02);;
  			transition: 0.3s;
        }

        .login-container h2 {
            margin-bottom: 1.5rem;
            color: #333;
        }

        .form-group {
            margin-bottom: 1rem;
            text-align: left;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            outline: none;
        }

        .form-control:focus {
            border-color: #007bff;
        }

        .btn-login {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            color: #fff;
            background-color: #0077b6;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-login:hover {
            background-color: white;
            border: 1.5px solid #0077b6;
            boder-color: #0077b6;
            color: #0077b6;
        }

        .error-message {
            color: red;
            margin-top: 1rem;
        }

        /* Register link styling */
        .register-link {
            display: block;
            margin-top: 1.5rem;
            font-size: 0.9em;
            color: #0077b6;
            text-decoration: none;
            transition: color 0.2s;
        }
        

        .register-link:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 576px) {
            .login-container {
                padding: 1.5rem;
            }
            h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary border-bottom">
	  <div class="container" style="padding-top: 0rem;">
	    
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="navbar-brand tite" href="/"><span>Gestion des</span> Evénements</a>
	        </li>
	      </ul>
	    </div>
	    	  
	</div>
	</nav>

    <div class="login-container container-fluid">
        <h2><i class="fas fa-user-lock"></i> Connecter</h2>
        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="form-group">
                <label for="email"><i class="fas fa-envelope"></i> Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="password"><i class="fas fa-key"></i> Mot de Passe:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>

            <button type="submit" class="btn-login"><i class="fas fa-sign-in-alt"></i> Connecter</button>
        </form>
        
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>

        <!-- Link to Registration Page -->
        <a href="${pageContext.request.contextPath}/register" class="register-link">
            <i class="fas fa-user-plus"></i> Vous n'avez pas de compte ? Inscrivez-vous ici
        </a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
