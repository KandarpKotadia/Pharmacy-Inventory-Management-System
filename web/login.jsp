<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Login</title>

          <script src="https://kit.fontawesome.com/186f659f91.js" crossorigin="anonymous"></script>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

     </head>
     <body style="margin: 0px; text-align: center; background-color: #ccffcc;">
          <div style="background-color: #ccffcc;height: 750px;display: inline-block;text-align: center">
               <img alt="logo" src="logo.png" style="margin-right: auto;width: 5%;margin-left: auto">
               <p style="padding-top: 10px;font-size: 80px;font-weight: bolder;color: black;margin: 0; display: inline;">
                    PHARMACY
               </p><br><br><br><br><br><br><br>

               <div style="margin: 0;padding: 0px;border: 0;background-color: #ccffcc;">
               <div style="border: 1px solid lightgray;border-radius: 8px;background-color: rgba(244, 244, 244, 0.5);margin: auto;padding: 10px;width: 30%;text-align: center">
                    <h3 style="font-size: 35px;text-align: center">LOGIN</h3><br>
                    <form action="Login" method="post">
                         Enter username: <input type="text" name="username"><br><br>
                         Enter password: <input type="password" name="password"><br><br>
                         <input type="submit" value="Login">
                    </form>
               </div>
          </div>
     </body>
</html>
