<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Books</title>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <h2>Books List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Title</th>
                <th>Genre</th>
                <th>Author</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.title}</td>
                    <td>${book.genre}</td>
                    <td>${book.author.name}</td>
                    <td>
                        <a href="/books/edit/${book.id}">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br/>
    <a href="/books/new">Add New Book</a>
</body>
</html>
