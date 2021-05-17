<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--Request Scope EL Vars--%>
<%--@elvariable id="productList" type="java.util.List<uts.isd.model.Product>"--%>
<%--@elvariable id="prevQuery" type="java.lang.String"--%>

<%--Session Scope EL Vars--%>
<%--@elvariable id="user" type="uts.isd.model.Account"--%>

<head>
    <title>Products</title>
</head>
<jsp:include page="../templates/header.jsp"/>

<%--Success Message--%>
<c:if test="${not empty successDelete}">
    <div class="alert alert-secondary alert-dismissible fade show" role="alert">
        <p class="mb-0">Product Deleted Successfully!</p>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</c:if>

<div class="d-flex mb-2">
    <form class="form-inline mb-0" method="get" action="CatalogueServlet">
        <div class="input-group">
            <input type="text" class="form-control" style="width: 400px;" name="query" placeholder="Search..." value="${prevQuery}">
            <select class="form-control" name="category" style="max-width: 300px;">
                <option ${product.category == "Displays" ? "selected" : ""}>Displays</option>
                <option ${product.category == "Motors" ? "selected" : ""}>Motors</option>
                <option ${product.category == "Motion Sensors" ? "selected" : ""}>Motion Sensors</option>
                <option ${product.category == "Navigation modules" ? "selected" : ""}>Navigation modules</option>
            </select>
                        
            <div class="input-group-append">
                <button type="submit" class="btn btn-dark px-3">Submit</button>
            </div>
        </div>
        <a href="CatalogueServlet" class="text-danger ml-2 btn btn-link">Clear</a>
    </form>

    <c:if test="${not empty user && user.staff}">
        <a href="add.jsp" class="btn btn-dark ml-auto mr-3">Add Product</a>
    </c:if>
</div>

<h1>Products</h1>

<c:choose>
    <c:when test="${empty productList}">
        <h5 class="my-5 text-center display-5 font-weight-normal">
            <strong>No products available</strong>            
        </h5>
    </c:when>

    <c:otherwise>
        <div class="card-deck products-list">
            <c:forEach items="${productList}" var="product" varStatus="count">
                <div class="card">
                    
                    <div class="card-body">
                        <h5 class="card-title"><a href="ProductDetailsServlet?ID=${product.ID}">${product.name}</a></h5>
                        <p class="card-text price">$ ${product.price}</p>

                        <p class="card-text">
                            <c:choose>
                                <c:when test="${product.stock > 0}">
                                    <small class="col-sm-3">${product.stock}
                                        currently in stock</small>
                                </c:when>
                                <c:otherwise>
                                    <small class="text-danger">Out of stock</small>
                                </c:otherwise>
                            </c:choose>
                        </p>

                    </div>
                    <div class="card-footer">
                        <c:if test="${not empty user && user.staff}">
                            <small class="float-right">
                                <a href="EditProductServlet?ID=${product.ID}" class="text-info">Edit Product</a>
                            </small>
                        </c:if>
                        <form class="form-inline mb-0" method="get" action="CatalogueServlet">
                            <input type="hidden" name="category" value="${product.category}">
                            <text class=" text-muted p-0">
                                <small>${product.category}</small>
                            </text>
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </c:otherwise>
</c:choose>

<jsp:include page="../templates/footer.jsp"/>