<!DOCTYPE html>
<html>
<head>
    <title>Add New Author</title>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <h2>Add New Author</h2>
    <form action="/authors" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required/><br/><br/>
        
        <label for="nationality">Nationality:</label>
        <input type="text" name="nationality" required/><br/><br/>
        
        <button type="submit">Save</button>
    </form>
    <br/>
    <a href="/authors">Back to Authors</a>
</body>
</html>
