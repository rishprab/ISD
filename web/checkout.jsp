<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--@elvariable id="user" type="Account"--%>
<%--@elvariable id="cart" type="java.util.List<OrderLineItem>"--%>
<%--@elvariable id="lineItem" type="uts.isd.model.OrderLineItem"--%>

<head>
    <title>Checkout</title>
</head>
<jsp:include page="templates/header.jsp"/>

<div class="w mx-auto">
    <!--Delete-->
    <c:if test="${not empty successDelete}">
        <div class="alert alert-secondary alert-dismissible fade show" role="alert">
            <p class="mb-0">Payment Information deleted successfully!</p>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>

    <!--Anonymous User-->
    <c:if test="${not empty user && user.customer && user.anonymous}">
        <div class="alert alert-secondary alert-dismissible fade show" role="alert">
            <p class="mb-0"><strong>NOTE: </strong>Ordering as an anonymous user.</p>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>

    <h1 class="font-weight-bold">Checkout</h1>
    <a href="cart.jsp" class="d-inline-block">
        Back to Cart
    </a>

    <!--Calculate Total-->
    <c:set var="total" value="${0}"/>
    <c:forEach items="${cart}" var="lineItem" varStatus="count">
        <c:set var="total" value="${total + lineItem.sumPrice}"/>
    </c:forEach>

    <h4 class="mt-2 mb-1">Details</h4>
    <div class="rounded border p-3 mt-2">
        <p class="d-flex">
            <strong class="mr-auto">Sub Total Inc GST:</strong>
            <span>$<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2"
                                     value="${total}"/></span>
        </p>
        <p class="d-flex">
            <strong class="mr-auto">Payment Method:</strong>
            <c:choose>
                <c:when test="${empty user || user.staff || empty user.paymentInfo.cardNumber}">
                    <span class="text-danger float-right">No Billing Information</span>
                </c:when>
                <c:otherwise>
                    <span class="float-right">${user.paymentInfo.cardNumber}</span>
                </c:otherwise>
            </c:choose>
        </p>
        <p class="d-flex">
            <strong class="mr-auto">Shipping To:</strong>
            <c:choose>
                <c:when test="${empty user || user.staff || empty user.address.addressLine1}">
                    <span class="text-danger float-right">No Shipping Address</span>
                </c:when>
                <c:otherwise>
                    <span class="float-right">${user.address}</span>
                </c:otherwise>
            </c:choose>
        </p>

        <!--Edit or Add Details Button-->
        <c:choose>
            <c:when test="${empty user || not empty user && user.customer && (empty user.paymentInfo.cardNumber && empty user.address.addressLine1)}">
                <!--User is logged in but doesn't have any info-->
                <a href="edit_payment_info.jsp" class="btn btn-secondary">Add Payment Details </a>
            </c:when>
            <c:when test="${not empty user && user.customer && (not empty user.paymentInfo.cardNumber || not empty user.address.addressLine1)}">
                <!--If user is logged in but has SOME info-->
                <a href="edit_payment_info.jsp" class="btn btn-secondary">Edit Payment Details</a>
                <form class="form-inline mt-2 mb-0" action="DeletePaymentServlet" method="post">
                    <button type="submit" class="btn btn-secondary">Remove Payment Details</button>
                </form>
            </c:when>
        </c:choose>
    </div>

    <h1 class="text-right my-5">Total: $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${total}"/></h1>

    <form action="order/PlaceOrderServlet" method="post">
        <c:choose>
            <c:when test="${user.staff}">
                <!--If user is staff-->
                <button type="submit" class="btn btn-dark btn-block btn-lg mt-4 mb-3" disabled>
                    Purchase
                </button>
                <p class="text-danger text-center w-75 mx-auto">
                    <small>Staff accounts cannot place orders.<br>
                        Please <a href="register.jsp" class="text-danger font-weight-bold">register a customer account</a>.
                    </small>
                </p>
            </c:when>
            <c:when test="${empty user || not empty user && user.customer && (empty user.paymentInfo.cardNumber || empty user.address.addressLine1)}">
                <!--If missing request payment info or address-->
                <button type="submit" class="btn btn-dark btn-block  btn-lg mt-4 mb-3" disabled>
                    Purchase
                </button>
                <p class="text-danger text-center w-75 mx-auto">
                    <small>You need to have <strong>valid payment information</strong> & a <strong>shipping
                        address</strong> before you can purchase</small>
                </p>
            </c:when>
            <c:otherwise>
                <button type="submit" class="btn btn-dark btn-block btn-lg mt-4 mb-3">
                    Purchase
                </button>
            </c:otherwise>
        </c:choose>
    </form>
</div>

<jsp:include page="templates/footer.jsp"/>
