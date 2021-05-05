<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <title>Title</title>
</head>
    <body>
        <h2 class="h2">COUNTRY</h2>
        <div class="container">

            <form:form method="POST" modelAttribute="name">

                <form:errors path="*" cssClass="alert alert-danger" element="div" />

                <div class="form-group">
                    <label for="name">Name:</label>
                    <form:input class="form-control" path="name" />
                    <form:errors path="name" cssClass="alert alert-warning" element="div" />
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <form:textarea class="form-control" path="description" rows="4" />
                    <form:errors path="description" cssClass="alert alert-warning"
                                 element="div" />
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <form:input path="price" class="form-control" />
                    <form:errors path="price" cssClass="alert alert-warning"
                                 element="div" />
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-info">Submit</button>
                </div>
            </form:form>
        </div>
    </body>
</html>