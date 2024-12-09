<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin tableau de bord</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Custom styling for Admin Dashboard */
        body {
            background-color: #f7f8fc;
        }
        .dashboard-container {
            margin-top: 50px;
        }
        .card {
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card i {
            font-size: 2.5rem;
        }
    </style>
</head>
<body>
    <div class="container dashboard-container">
        <h2 class="text-center my-4">Admin Tableau de Bord</h2>

        <div class="row text-center">
            <!-- Manage Events Card -->
            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card border-primary h-100">
                    <div class="card-body">
                        <i class="fas fa-calendar-alt text-primary mb-3"></i>
                        <h5 class="card-title">Gérer les événements</h5>
                        <p class="card-text">Créez, mettez à jour et gérez tous les événements.</p>
                        <a href="${pageContext.request.contextPath}/admin/events" class="btn btn-primary">Accéder aux Evénements</a>
                    </div>
                </div>
            </div>

            <!-- Manage Venues Card -->
            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card border-info h-100">
                    <div class="card-body">
                        <i class="fas fa-map-marker-alt text-info mb-3"></i>
                        <h5 class="card-title">Gérer les Lieux</h5>
                        <p class="card-text">Ajoutez et modifiez les lieux des événements à venir.</p>
                        <a href="${pageContext.request.contextPath}/admin/venues" class="btn btn-info">Accéder aux Lieux</a>
                    </div>
                </div>
            </div>

            <!-- Manage Bookings Card -->
            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card border-success h-100">
                    <div class="card-body">
                        <i class="fas fa-users text-success mb-3"></i>
                        <h5 class="card-title">Gérer les Réservations</h5>
                        <p class="card-text">Afficher et gérer les réservations d'événements.</p>
                        <a href="${pageContext.request.contextPath}/admin/manage-rsvps" class="btn btn-success">Accéder aux Réservations</a>
                    </div>
                </div>
            </div>

            <!-- Logout Card -->
            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card border-danger h-100">
                    <div class="card-body">
                        <i class="fas fa-sign-out-alt text-danger mb-3"></i>
                        <h5 class="card-title">Déconnexion</h5>
                        <p class="card-text">Déconnectez-vous de votre compte administrateur.</p>
                        <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger">Déconnexion</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
