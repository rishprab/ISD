<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--Request Scope EL Vars--%>
<%--@elvariable id="product" type="uts.isd.model.Product"--%>

<%--Session Scope EL Vars--%>
<%--@elvariable id="user" type="uts.isd.model.Account"--%>

<head>
    <title>Product Details</title>
</head>
<jsp:include page="../templates/header.jsp"/>

<c:if test="${param.successAdd}">
    <div class="alert alert-secondary alert-dismissible fade show" role="alert">
        <p class="mb-0">Added to cart! </p>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</c:if>

<c:if test="${param.failAdd}">
    <div class="alert alert-dark alert-dismissible fade show" role="alert">
        <p class="mb-0"><strong>Can't add to cart! </strong>We don't have enough left!</p>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</c:if>

<a href="CatalogueServlet" class="d-inline-block mb-2">
    Back to Product List
</a>

<c:choose>
    <c:when test="${empty product}">
        <h5 class="my-5 text-center display-5 font-weight-normal">
            <strong>That product does not exist</strong>
        </h5>
    </c:when>

    <c:otherwise>
        <div class="row no-gutters mb-5">
            <main class="col-md-6">
                <article class="px-4">
                    <h2 class="title">${product.name}</h2>

                    <c:if test="${not empty user && user.staff}">
                        <a class="text-info" href="EditProductServlet?ID=${product.ID}">Edit Product Details</a>
                    </c:if>

                    <div class="mb-3">
                        <span class="price h4">
                            $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${product.price}"/>
                        </span>
                        <span class="text-muted"></span>
                    </div>

                    <p>${product.description}</p>


                    <dl class="row">
                        <dt class="col-sm-3">Product ID</dt>
                        <dd class="col-sm-9">#${product.ID}</dd>

                        <dt class="col-sm-3">Category</dt>
                        <dd class="col-sm-9"> ${product.category}</dd>

                        <dt class="col-sm-3">Available</dt>
                        <dd class="col-sm-9">
                            <c:choose>
                                <c:when test="${product.stock > 0}">
                                    <span class="col-sm-3">${product.stock}
                                        left</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="text-danger">Out of stock</span>
                                </c:otherwise>
                            </c:choose>
                        </dd>
                    </dl>

                    <hr>

                    <!--TODO Ordering-->
                    <form class="form mb-0" method="post" action="../order/AddToCartServlet">
                        <input type="hidden" value="${product.ID}" name="ID">

                        <div class="form-group" style="width: 30%">
                            <label>Quantity</label>
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">       
                                </div>
                                <input type="number" id="quantity" value="1" min="1" required name="quantity"
                                       class="form-control border-dark text-center pl-4">
                                <div class="input-group-append">
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-dark">
                            Add to cart
                        </button>
                    </form>
                </article>
            </main>
        </div>
    </c:otherwise>
</c:choose>

<jsp:include page="../templates/footer.jsp"/>