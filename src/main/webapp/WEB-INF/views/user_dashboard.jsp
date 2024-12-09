<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.eventmanagement.model.Event"%>
<%@ page import="java.util.List"%>

<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f7f8fc;
        }
        .container {
            margin-top: 40px;
        }
        .dashboard-header {
            color: #333;
            margin-bottom: 20px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            border: solid 1px #4f95ff;
        }
        .card:hover {
            transform: scale(1.02);
        }
        .card-title {
            color: #007bff;
            font-weight: bold;
        }
        .text-danger {
            font-size: 0.9em;
        }
        .btn-success[disabled] {
            cursor: not-allowed;
        }
        .action-buttons {
            display: flex;
            justify-content: flex-end;
        }
        .action-buttons a {
            margin-left: 10px;
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
        
        .dashboard-header {
            color: #333;
            margin-bottom: 20px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 5px;
        }
        .card:hover {
			-webkit-box-shadow: 0px 0px 37px -3px rgba(117,115,117,1);
			-moz-box-shadow: 0px 0px 37px -3px rgba(117,115,117,1);
			box-shadow: 0px 0px 37px -3px rgba(117,115,117,1);
  			transform: scale(1.05);
  			transition: 0.7s;
        }
        .card-title {
            color: #0077b6;
            font-weight: bold;
        }
        .text-danger {
            font-size: 0.9em;
        }
        .btn-success[disabled] {
            cursor: not-allowed;
        }
        
        .btn-danger{
        	display: inline-block;
		  padding: 0.3rem 1.1rem;
		  
		  color: #ffffff;
		  cursor: pointer;
		  border-radius: 2.5rem;
		  font-size: 20px;
		  text-transform: capitalize;
		  border-color: red;
        }

        .btn-danger:hover {
           background: #ffffff00;
		  color: red;
		  outline: solid 1px red;
		  outline-offset: -2px;
		  transition: 0.5s;
		  border-color: red;
        }
        
        .btn-success{
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

        .btn-success:hover {
           background: #ffffff00;
		  color: #0077b6;
		  outline: solid 1px #4f95ff;
		  outline-offset: -2px;
		  transition: 0.5s;
		  border-color: #0077b6;
        }
        .action-buttons {
            display: flex;
            justify-content: flex-end;
        }
        .action-buttons a {
            margin-left: 10px;
        }
        .card-footer{
        	padding-bottom: 0px;
        }
        .row{
        	margin-top: 3.5em;
        }
    </style>
</head>
<body>
    <div class="container my-4">
        <div class="dashboard-header text-center">
            <h2>Bienvenue à votre tableau de bord</h2>
        </div>

        <!-- Action buttons for 'Your Bookings' and 'Logout' -->
        <div class="action-buttons mb-4">
            <a href="${pageContext.request.contextPath}/user/bookings" class="btn btn-primary">
                <i class="fas fa-calendar-check"></i> Vos Réservations
            </a>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger">
                <i class="fas fa-sign-out-alt"></i> Déconnexion
            </a>
        </div>

        <h3 class="mb-4">Evénements Disponibles</h3>

        <div class="row">
            <%
            List<Event> events = (List<Event>) request.getAttribute("events");
            if (events != null && !events.isEmpty()) {
                for (Event event : events) {
                    boolean isClosed = "Closed".equalsIgnoreCase(event.getStatus());
            %>
                <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                    <div class="card h-100">
                        <img src="<%= event.getImageUrl() != null ? event.getImageUrl() : "https://via.placeholder.com/300x200" %>" class="card-img-top" alt="Event Image">

                        <div class="card-body">
                            <h5 class="card-title"><%= event.getName() %></h5>
                            <p class="card-text"><%= event.getDescription() %></p>
                            <p><strong><i class="fas fa-calendar-alt"></i> Date:</strong> <%= event.getDate() %></p>
                            <p><strong><i class="fas fa-map-marker-alt"></i> Lieu:</strong> <%= event.getVenue() != null ? event.getVenue().getName() : "N/A" %></p>
                            <p><strong><i class="fas fa-info-circle"></i> Status:</strong> <%= event.getStatus() != null ? event.getStatus() : "N/A" %></p>
                            
                            <% if (isClosed) { %>
                                <p class="text-danger"><strong>Réservation est fermée pour cet événement.</strong></p>
                            <% } else { %>
                                <p class="text-danger" id="date-warning-<%= event.getId() %>"></p>
                            <% } %>
                        </div>
                        <div class="card-footer text-center">
                            <form action="<%= request.getContextPath() %>/user/rsvp" method="get">
                                <input type="hidden" name="eventId" value="<%= event.getId() %>">
                                <button type="submit" class="btn btn-success" 
                                        id="rsvp-button-<%= event.getId() %>" 
                                        <%= isClosed ? "disabled" : "" %>>
                                    <i class="fas fa-check"></i> Reserver
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                <script>
                    // Disable RSVP button if event date has passed
                    (function() {
                        const eventDate = new Date("<%= event.getDate() %>");
                        const currentDate = new Date();
                        
                        if (eventDate < currentDate) {
                            document.getElementById("rsvp-button-<%= event.getId() %>").disabled = true;
                            document.getElementById("date-warning-<%= event.getId() %>").innerText = "The date for this event has passed.";
                        }
                    })();
                </script>
            <%
                }
            } else {
            %>
                <div class="col-12">
                    <p class="text-center">No events available.</p>
                </div>
            <%
            }
            %>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
