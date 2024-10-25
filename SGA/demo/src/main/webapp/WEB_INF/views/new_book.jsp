<!DOCTYPE html>
<html>
<head>
    <title>Add New Book</title>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <h2>Add New Book</h2>
    <form action="/books" method="post">
        <label for="title">Title:</label>
        <input type="text" name="title" required/><br/><br/>
        
        <label for="genre">Genre:</label>
        <input type="text" name="genre" required/><br/><br/>

        <label for="author">Author:</label>
        <select name="author.id" required>
            <c:forEach var="author" items="${authors}">
                <option value="${author.id}">${author.name}</option>
            </c:forEach>
        </select><br/><br/>
        
        <button type="submit">Save</button>
    </form>
    <br/>
    <a href="/books">Back to Books</a>
</body>
</html>
