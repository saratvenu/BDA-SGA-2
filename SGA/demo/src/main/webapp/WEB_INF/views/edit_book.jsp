<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <h2>Edit Book</h2>
    <form action="/books/${book.id}" method="post">
        <input type="hidden" name="_method" value="put"/>

        <label for="title">Title:</label>
        <input type="text" name="title" value="${book.title}" required/><br/><br/>
        
        <label for="genre">Genre:</label>
        <input type="text" name="genre" value="${book.genre}" required/><br/><br/>

        <label for="author">Author:</label>
        <select name="author.id">
            <c:forEach var="author" items="${authors}">
                <option value="${author.id}" ${author.id == book.author.id ? 'selected' : ''}>${author.name}</option>
            </c:forEach>
        </select><br/><br/>

        <button type="submit">Update</button>
    </form>
    <br/>
    <a href="/books">Back to Books</a>
</body>
</html>
