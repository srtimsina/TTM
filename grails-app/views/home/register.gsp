<%--
  Created by IntelliJ IDEA.
  User: Suryaraj
  Date: 6/30/2016
  Time: 10:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
    <title>Registration Form</title>
</head>

<body>
    <div style="width: 40%;margin: auto" >
    <g:form controller="person" action="register">
        <br><br/>
        <label>Username: </label>
        <g:textField name="userName"/><br><br/>
        <label>Password: </label>
        <g:passwordField style="margin-left: 5px" name= "password"/><br><br/>
        <label style="margin-left: -55px">Confirm Password: </label>
        <g:passwordField name="confirmPassword"/><br><br/>
        <label>First Name: </label>
        <g:textField style="margin-left: -1px" name="firstName"/><br><br/>
        <label>Last Name: </label>
        <g:textField name="lastName"/><br><br/>
        <label>Sex: </label>
        <g:textField style="margin-left: 50px" name="sex"/><br><br/>
        <label>Age: </label>
        <g:textField style="margin-left: 49px" name="age"/><br><br/>
        <label>Address: </label>
        <g:textField style="margin-left: 18px" name="address"/><br><br/>
        <label>Email: </label>
        <g:textField style="margin-left: 37px" name="email"/><br><br/>
        <label>Phone: </label>
        <g:textField style="margin-left: 31px" name="phoneNo"/><br><br/>
        <g:actionSubmit style="margin-left: 230px" value="register"/>
    </g:form>
    </div>
</body>
</html>