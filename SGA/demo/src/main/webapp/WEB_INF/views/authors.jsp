<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Authors</title>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <h2>Authors List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Nationality</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="author" items="${authors}">
                <tr>
                    <td>${author.name}</td>
                    <td>${author.nationality}</td>
                    <td>
                        <a href="/authors/edit/${author.id}">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br/>
    <a href="/authors/new">Add New Author</a>
</body>
</html>
