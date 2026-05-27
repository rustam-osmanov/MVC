<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">

<body>
<h2>Добавление сотрудника</h2>
<br>
<br>

<form:form action="saveEmployee" modelAttribute="employee">
    <form:hidden path="id"/>
    <br>
    Фамилия <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    Имя <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Департамент <form:input path="department"/>
    <form:errors path="department"/>
    <br>
    Зарплата <form:input path="salary"/>
    <form:errors path="salary"/>

    <br>
    <br>
    <br>
    <input type = "submit" value="Сохранить"/>

</form:form>

</body>

</html>