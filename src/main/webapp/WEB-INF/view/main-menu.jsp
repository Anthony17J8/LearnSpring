<!DOCTYPE html>
<html>


<head>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/my-test.css">

    <script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>

</head>

<body>
<h2>Spring MVC Demo - Home Page</h2>

<br><br>
<input type="button" onclick="doSomeWork()" value="Click Me"/>
<img src="${pageContext.request.contextPath}/resources/img/project-management.png"/>

<br><br>
<a href="hello/showForm">Hello World Form</a>

<br><br>
<a href="student/showForm">Student form</a>

<br><br>
<a href="customer/showForm">Customer form</a>

</body>

</html>