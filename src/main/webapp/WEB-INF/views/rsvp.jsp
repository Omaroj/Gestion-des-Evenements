<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Résérvation D'événement</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Custom styling for the RSVP form */
        body {
            background-color: #f7f8fc;
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .rsvp-container {
        	margin-top: 2rem;
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 10px;
            width: 100%;
            text-align: center;
            border: solid 1px #0077b6;
        }
        
        
        .rsvp-container:hover {
        	-webkit-box-shadow: 0px 0px 37px -3px #0077b6;
			-moz-box-shadow: 0px 0px 37px -3px #0077b6;
			box-shadow: 0px 0px 37px -3px #0077b6);
  			transform: scale(1.02, 1.02);
  			transition: 0.3s;
        }
        .form-title {
            font-weight: bold;
            color: #007bff;
        }
        .form-label {
            font-weight: 500;
        }
        .form-control {
            box-shadow: none;
        }
        
        .btn-primary{
        	display: inline-block;
		  padding: 0.3rem 1.1rem;
		  background: #0077b6;
		  color: #ffffff;
		  cursor: pointer;
		  border-radius: 2.5rem;
		  font-size: 20px;
		  text-transform: capitalize;
		  border-color: #0077b6;
        }

        .btn-primary:hover {
           background: #ffffff00;
		  color: #0077b6;
		  outline: solid 1px #4f95ff;
		  outline-offset: -2px;
		  transition: 0.5s;
		  border-color: #0077b6;
        }
        
        .btn-secondary{
        	display: inline-block;
		  padding: 0.3rem 1.1rem;
		  background: grey;
		  color: #ffffff;
		  cursor: pointer;
		  border-radius: 2.5rem;
		  font-size: 20px;
		  text-transform: capitalize;
		  border-color: grey;
        }

        .btn-secondary:hover {
           background: #ffffff00;
		  color: grey;
		  outline: solid 1px grey;
		  outline-offset: -2px;
		  transition: 0.5s;
		  border-color: grey;
        }
        
        .mb-3{
        	margin-top: 5rem;
        	margin-left: 5rem;
        }
        
    </style>
</head>
<body>
	<div class="d-flex justify-content-start mb-3">
            <a href="${pageContext.request.contextPath}/user/dashboard" class="btn btn-secondary">
                <i class="fas fa-arrow-left"></i> Retour à la liste des événements
            </a>
    </div>
    <div class="container">
        <!-- Back to Event List Button -->

        <h2 class="form-title text-center mb-4">Résérvation pour <%= request.getAttribute("eventName") %></h2>
        <div class="rsvp-container">
        	<form action="<%= request.getContextPath() %>/user/rsvp" method="post" class="shadow p-4 bg-white rounded">
            <input type="hidden" name="eventId" value="<%= request.getAttribute("eventId") %>">

            <div class="form-group">
                <label for="numTickets" class="form-label"><i class="fas fa-ticket-alt"></i> Nombre de Tickets</label>
                <input type="number" id="numTickets" name="numTickets" class="form-control" required min="1">
            </div>

            <div class="form-group">
                <label for="name" class="form-label"><i class="fas fa-user"></i> Nom de Résérvation:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="email" class="form-label"><i class="fas fa-envelope"></i> Email de Résérvation:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Résérver</button>
        </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
