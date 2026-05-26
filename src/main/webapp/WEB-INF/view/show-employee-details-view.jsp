<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">

<body>
<h2>Добро пожаловать на тестовую страницу!</h2>
<br>
<br>
<br>
<h4> Добро пожаловать ${employee.surname} ${employee.name} !</h4>
<br>
<br>
Запрлата ${employee.salary}
<br>
<br>
Департамент ${employee.department}
<br>
<br>
Предпочитаемая машина ${employee.carBrand}
<br>
<br>
Знание языков
<ul>
     <c:forEach var="lang" items="${employee.languages}">
         <li>  ${lang}  </li>
     </c:forEach>
</ul>
Номер телефона ${employee.phoneNumber}
<br>
<br>
Email ${employee.email}
<br>
<br>
</body>

</html>