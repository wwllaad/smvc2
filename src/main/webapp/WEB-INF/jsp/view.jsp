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
            <th>ID</th>
            <td>${bankData.id}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${bankData.name}</td>
        </tr>

</table>
<a href="/">Back to Main</a>

</body>
</html>
