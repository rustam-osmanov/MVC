<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">

<body>
<h2>Список всех работников</h2>
<table id="employees">
    <tr>
        <th>Фамилия</th>
        <th>Имя</th>
        <th>Департамент</th>
        <th>Зарплата</th>
    </tr>
    <c:forEach var="empl" items="${allEmps}">
        <tr>
            <td>${empl.surname}</td>
            <td>${empl.name}</td>
            <td>${empl.department}</td>
            <td>${empl.salary}</td>
        </tr>
    </c:forEach>
</table>
</body>

</html>