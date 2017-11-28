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
<form method="post" action="/saveEdit">
    ID:<br>
    <input type="text" name="id" value="${bankEdit.id}">
    <br><br>

    Bank name:<br>
    <input type="text" name="bankName" value="${bankEdit.name}">
    <br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
