<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">

<body>
<h2>Дорогой пользователь , введите ваше имя</h2>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee" method="post">
    Фамилия <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    Имя <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Зарплата <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    Департамент <form:select path="department">
        <form:options items="${employee.departments}"/>
                </form:select>
    <br>
    Какую машину предпочитаете ?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>
    Знание языков
    <form:checkboxes path="languages" items="${employee.languagesList}"/>
    <br>
    <br>
    Номер телефона <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    <br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br>
    <br>
    <input type = "submit" value="Отправить"/>

</form:form>

</body>

</html>