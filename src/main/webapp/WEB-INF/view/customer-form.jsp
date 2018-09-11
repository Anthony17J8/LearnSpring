<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <title>Customer Registration form</title>

    <style>
        .error {color: red}
    </style>
</head>

<body>

<i> Fill out the form. Asterisk (*) means required.</i>

<form:form action="processForm" modelAttribute="customer">

    First name: <form:input path="firstName"/>

    <br><br>

    Last name (*): <form:input path="lastName"/>
    <from:errors path="lastName" cssClass="error"/>

    <br><br>

    <input type="submit" value="Submit"/>
</form:form>

</body>

</html>