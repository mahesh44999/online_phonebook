<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="log.css">
</head>
<body>
    <section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-12">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                    style="width: 185px;" alt="logo">
                  <h4 class="mt-1 mb-5 pb-1">We are The Java Team</h4>
                </div>

                <form action="validatelogin" method="post">
                  <p>Please login to your account</p>

                  <div class="form-outline mb-4">
                    <input type="email" id="form2Example11" name="email" class="form-control"
                      placeholder="enter email" />
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example22" name="password" class="form-control"  placeholder="enter password" />
                  </div>
                  <div class="form-outline mb-4">
                      <input type="submit" value="login">
                  </div>
				  <div>
                    <p>Don't have an account? <a href="signin.jsp" class="text-white-50 fw-bold">Sign Up</a>
                   </p>
                  </div>
                </form>
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>