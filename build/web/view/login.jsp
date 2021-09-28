<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<jsp:include page="/users" />--%>

<%
  Object data = session.getAttribute("UserID");
  int userId = -1;

  if (data != null)
    userId = Integer.parseInt(data.toString());



%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UrbanCloset | Sign In</title>
  <!-- Favicon -->
  <link rel="shortcut icon" href="./img/svg/logo.svg" type="image/x-icon">
  <!-- Custom styles -->
  <link rel="stylesheet" href="./css/style.min.css">

  
  <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">

    function submitForm()
    {
      let formData = $('#form-login').serialize();

      $.ajax({
        url: './users',
        method: 'post',
        accepts: 'application/json;charset=utf8',
        data: formData,
        success: function (res)
        {
          console.log(res.status);

          if (res.status)
          {
            // stop progress
            window.location.href = './index.jsp';

          }
          else
          {
            window.location.href = './login.html';
            alert("wrong Username password!!");


          }
        }
      });

      // start progress bar

      return false;
    }

  </script>

</head>
<body>

<%
  if(userId != -1)
  {
    response.sendRedirect("./index.jsp");

  }

%>

<br>
 <div class="layer"></div>
<main class="page-center">
  <article class="sign-up">
    <h1 class="sign-up__title">Welcome Back</h1>
    <p class="sign-up__subtitle">Sign In To Continue</p>
    <form class="sign-up-form form" id="form-login" method="post" onsubmit="return submitForm();">
      <label class="form-label-wrapper">
        <p class="form-label">UserName</p>
        <input class="form-input" type="text" placeholder="Enter your UserName" name="name" required>
      </label>
      <label class="form-label-wrapper">
        <p class="form-label">Password</p>
        <input class="form-input" type="password" placeholder="Enter your password" name="pass" required>
      </label>
      <button class="form-btn primary-default-btn transparent-btn" type="submit">Sign In</button>
      <a class="link-info forget-link"   href="./signup.jsp">SignUp</a>
    </form>
  </article>
</main>
</body>
</html>