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
        <th>Операции</th>
    </tr>
    <c:forEach var="empl" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${empl.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteInfo">
            <c:param name="empId" value="${empl.id}"/>
        </c:url>
        <tr>
            <td>${empl.surname}</td>
            <td>${empl.name}</td>
            <td>${empl.department}</td>
            <td>${empl.salary}</td>
            <td>
                <input type="button" value="Изменить" onclick = "window.location.href='${updateButton}'"/>
                <input type="button" value="Удалить" onclick = "window.location.href='${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<br>
<input type = "button" value="Добавить"
onclick = "window.location.href='addNewEmployee'"/>

</body>

</html>