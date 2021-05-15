<%-- 
    Document   : index
    Created on : 15/05/2021, 5:12:29 PM
    Author     : walid
--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Products Catalogue</title>
</head>

<div>
    <form method="get" action="CatalogueServlet">
        <div>
            <input type="text" style="width: 300px;" name="query" placeholder="Search..." value="${prevQuery}">
            <select class="form-control" name="category" style="max-width: 150px;">
                <option ${productList[0].category == "Category 1" ? "selected" : ""}>Category 1</option>
                <option ${productList[0].category == "Category 2" ? "selected" : ""}>Category 2</option>
                <option ${productList[0].category == "Category 3" ? "selected" : ""}>Category 3</option>
                <option ${productList[0].category == "Category 4" ? "selected" : ""}>Category 4</option>
                <option ${productList[0].category == "Category 5" ? "selected" : ""}>Category 5</option>
            </select>
            <div class="input-group-append">
                <button type="submit" >Submit</button>
            </div>
        </div>
        <a href="CatalogueServlet" >Clear</a>
    </form>

    <c:if test="${not empty user && user.staff}">
        <a href="add.jsp">Add Product +</a>
    </c:if>
</div>

<h1>Products</h1>

