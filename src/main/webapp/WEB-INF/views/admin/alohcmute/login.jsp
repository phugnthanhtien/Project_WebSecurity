<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Security-Policy" content=" "/>
    <title>Login - ALOHCMUTE</title>
    <link href="<c:url value="/templates/user/css/bootstrap-4.3.1-bootstrap.min.css"/>" rel="stylesheet">

    <style>
        body {
            background-color: #1a1a1a;
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        .container {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background-color: #333;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #1a1a1a;
            border-bottom: 1px solid #555;
        }

        .form-group label {
            color: #fff;
        }

        .form-control {
            background-color: #444;
            color: #fff;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
        }

        .logo-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo {
            font-size: 36px;
            font-weight: bold;
            color: #007bff;
        }

        .logo-subtext {
            font-size: 14px;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="col-4">
            <div class="card">
                <div class="logo-container">
                    <div class="logo">ALOHCMUTE</div>
                    <div class="logo-subtext">"connect, interact, thrive together"</div>
                </div>
                <div class="card-body">
                    <form action="/login" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="btn-container">
                            <button type="submit" class="btn btn-primary">Login</button>
                            <a href="/register" class="btn btn-secondary">Register</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="<c:url value="/templates/user/js/jquery-3.6.0.slim.min.js"/>"></script>
    <script src="<c:url value="/templates/user/js/ajax-1.14.7-popper.min.js"/>"></script>
    <script src="<c:url value="/templates/user/js/bootstrap-4.3.1-bootstrap.min.js"/>"></script>
    <script>
   	 const csrfToken = document.cookie.replace(/(?:(?:^|.*;\s*)XSRF-TOKEN\s*\=\s*([^;]*).*$)|^.*$/, '$1');
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader({
				...header,
				'X-XSRF-TOKEN': csrfToken
			}, token);
		});
	</script>
    
</body>
</html>
