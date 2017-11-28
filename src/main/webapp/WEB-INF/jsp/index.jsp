<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>id</th>
        <th>Bank</th>
    </tr>
    <c:forEach var="tempData" items="${AllBanksInDB}">
    <tr>
        <td>${tempData.id}</td>
        <td>${tempData.name}</td>
        <td>
            <a href="/view/${tempData.id}">View</a>
            <a href="/delete/${tempData.id}">Delete</a>
            <a href="/edit/${tempData.id}">Edit</a> </td>
    </tr>
    </c:forEach>
</table>

<form method="post" action="/save">

    Bank name:<br>
    <input type="text" name="bankName">
    <br><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
