<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <title>Student Registration Form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName"/>

    <br><br>

    Last name: <form:input path="lastName"/>

    <br><br>

    Country:
    <%--hardcode in jsp file--%>
    <%--<form:select path="country">--%>
        <%--<form:option value="Russia" label="Russia"/>--%>
        <%--<form:option value="France" label="France"/>--%>
        <%--<form:option value="Germany" label="Germany"/>--%>
        <%--<form:option value="Italy" label="Italy"/>--%>

    <%--</form:select>--%>

    <%--retrieve from java class--%>
    <form:select path="country">
        <form:options items="${theCountryOptions}"/>
    </form:select>

    <input type="submit" value="Submit"/>

</form:form>

</body>

</html>
