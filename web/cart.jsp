<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--@elvariable id="cart" type="java.util.List<OrderLineItem>"--%>
<%--@elvariable id="lineItem" type="uts.isd.model.OrderLineItem"--%>

<head>
    <title>Cart</title>
</head>
<jsp:include page="templates/header.jsp"/>

<c:if test="${not empty param.failUpdate}">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <p class="mb-0"><strong>Can't update cart! </strong>We don't have enough of that item left!</p>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</c:if>

<c:choose>
    <c:when test="${empty cart}">
        <div class="text-center">
            <h2 class="mt-5 mb-1 display-5">Cart is Empty</h2>
            <a href="products/CatalogueServlet">Add Products</a>
        </div>
    </c:when>

    <c:otherwise>
        <h1>Shopping Cart</h1>
        <form class="mb-0 inline-form" action="order/ClearCartServlet" method="post">
            <button type="submit" class="d-inline-block mb-2 float-right btn text-danger btn-link p-0">
                Clear Cart
            </button>
        </form>
        <a href="products/CatalogueServlet" class="d-inline-block mb-2">
            Continue Shopping
        </a>

        <div class="row mt-4">
            <h4 class="col-8">Product</h4>
            <h4 class="col-3 text-center" style="padding-right: 2.25rem">Quantity</h4>
            <h4 class="col text-right">Price</h4>
        </div>

        <c:set var="total" value="${0}"/>

        <c:forEach items="${cart}" var="lineItem" varStatus="count">
            <c:set var="total" value="${total + lineItem.sumPrice}"/>

            <div class="mb-3 py-3 border-bottom row" style="min-height: 180px">

                <div class="col d-flex flex-column align-items-start pr-0">
                    <div class="row mb-auto w-100 align-items-start">
                        <div class="col-8">
                            <h4 class="display-5 font-weight-bold p-0">${lineItem.product.name}
                            </h4>
                            
                            <p text="mb-0">${lineItem.product.category}</p>

                            <c:choose>
                                <c:when test="${lineItem.product.stock > 0}">
                                    <p class="mb-0">${lineItem.product.stock}
                                        left</p>
                                </c:when>
                                <c:otherwise>
                                    <p class="mb-0 text-danger">Out of stock</p>
                                </c:otherwise>
                            </c:choose>
                        </div>

                        <form class="col-2 text-center form mb-0" action="order/UpdateCartItemServlet" method="post">
                            <input type="hidden" name="ID" value="${lineItem.product.ID}">
                            <input class="text-center pl-3 rounded border w-50" type="number" name="quantity"
                                   value="${lineItem.quantity}" min="1"/>
                            <br>
                            <button type="submit" class="btn btn-link">Update</button>
                        </form>

                        <h3 class="col text-right display-5 font-weight-bold pr-0">
                            $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${lineItem.sumPrice}"/>
                        </h3>
                    </div>

                    <form class="align-self-end mr-3 mb-0" action="order/RemoveFromCartServlet" method="post">
                        <input type="hidden" name="ID" value="${lineItem.product.ID}">
                        <button type="submit" class="btn btn-link text-danger p-0">Remove</button>
                    </form>
                </div>
            </div>
        </c:forEach>

        <div class="text-right mt-5">
            <h1>
                <small class="text-secondary" style="font-size: 0.6em">Total:</small> $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${total}"/>
            </h1>
            <a href="checkout.jsp" class="btn btn-dark btn-lg px-5 mt-2 mb-5">
                Checkout
            </a>
        </div>
    </c:otherwise>
</c:choose>

<jsp:include page="templates/footer.jsp"/>
