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

    <br><br>

    Favorite Language:

 <%--   Java: <form:radiobutton path="favoriteLanguage" value="Java"/>
    C#: <form:radiobutton path="favoriteLanguage" value="C#"/>
    PHP: <form:radiobutton path="favoriteLanguage" value="PHP"/>
    Ruby: <form:radiobutton path="favoriteLanguage" value="Ruby"/>--%>

    <%--retrieve from java class--%>
    <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"/>

    <br><br>

    Operating Systems:
    Linux: <form:checkbox path="operatingSystems" value="Linux"/>
    MS Windows: <form:checkbox path="operatingSystems" value="MS Windows"/>
    Mac OS: <form:checkbox path="operatingSystems" value="Mac OS"/>

    <br><br>

    <input type="submit" value="Submit"/>

</form:form>

</body>

</html>
