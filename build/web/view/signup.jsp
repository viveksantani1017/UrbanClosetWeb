<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Object data = session.getAttribute("UserID");
int userId = -1;
    
if (data != null)
    userId = Integer.parseInt(data.toString());
    out.println(userId);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="./css/style.min.css"></link>

    <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>

    
    
<script type="text/javascript">
            
            function submitForm()
            {
                let formData = $('#form-signup').serialize();
                
                $.ajax({
                    
                    url: './signup',
                    method: 'post',
                    accepts: 'application/json;charset=utf8',
                    data: formData,
                    success: function (res)
                    {
                        if (res.status)
                        {
                            // stop progress
                            window.location.href = './login.jsp';
                            alert("Registered !!");
                        }
                        else
                        {
                           console.log(res.status);
                            alert("USerName or Email Already In Use");
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
    
    <div class="layer"></div>
<main class="page-center">
  <article class="sign-up">
    <h1 class="sign-up__title">Get started</h1>
    <p class="sign-up__subtitle">Enter Follwing Details To Create An Account</p>
        <form class="sign-up-form form" id="form-signup" method="post" onsubmit="return submitForm();">
        <label class="form-label-wrapper">
        <p class="form-label">Email</p>
        <input class="form-input" type="email" placeholder="Enter your Email" name="email" required>
      </label>
      <label class="form-label-wrapper">
        <p class="form-label">UserName</p>
        <input class="form-input" type="text" placeholder="Enter your UserName" name="name" required>
      </label>
      <label class="form-label-wrapper">
        <p class="form-label">Password</p>
        <input class="form-input" type="password" placeholder="Enter your password" name="pass" required>
      </label>
      <label class="form-label-wrapper">
        <p class="form-label">Phone Number</p>
        <input class="form-input" type="text" placeholder="Enter your PhNo" name="phno" required>
      </label>
      <button class="form-btn primary-default-btn transparent-btn" type="submit">Sign In</button>
      <a class="link-info forget-link"   href="./login.jsp">SignIn</a>
    </form>
  </article>
</main>

</body>
</html>