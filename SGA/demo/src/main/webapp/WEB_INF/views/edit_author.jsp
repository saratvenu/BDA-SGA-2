<!DOCTYPE html>
<html>
<head>
    <title>Edit Author</title>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <h2>Edit Author</h2>
    <form action="/authors/${author.id}" method="post">
        <input type="hidden" name="_method" value="put"/>

        <label for="name">Name:</label>
        <input type="text" name="name" value="${author.name}" required/><br/><br/>
        
        <label for="nationality">Nationality:</label>
        <input type="text" name="nationality" value="${author.nationality}" required/><br/><br/>
        
        <button type="submit">Update</button>
    </form>
    <br/>
    <a href="/authors">Back to Authors</a>
</body>
</html>
