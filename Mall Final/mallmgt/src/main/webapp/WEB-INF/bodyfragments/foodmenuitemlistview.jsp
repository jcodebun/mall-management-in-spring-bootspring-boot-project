<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<style><%@include file="/WEB-INF/css/moviegrid.css"%></style>

 <section style="background-color: white;">
 
  <div class="container py-3 content">
  <%@include file="businessMessage.jsp" %>
  <div class="row">
  
    <c:forEach items="${list}" var="li" varStatus="u">
    <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">	
        <div class="card">
          <div class="d-flex justify-content-between p-3">
          
            <div class="col-md-6 mb-4">
 					
  			   <div class="d-flex justify-content-between p-3">
                   <p  style="font-weight: bold;">${li.stallName}</p>
                 </div>
  					<img alt="" src="${pageContext.request.contextPath}/getStallImage/${li.stallId}" height="200px" width="300px">
		
			  <div class="form-check">
  					
  					<label class="form-check-label" for="flexRadioDefault1" style="font-weight: bold;">
    				Food Name:
  					</label>
  					<p class="lead mb-0">${li.foodName}</p>
			</div>
			
			  <div class="form-check">
  					
  					<label class="form-check-label" for="flexRadioDefault1" style="font-weight: bold;">
    				Food Price:
  					</label>
  					<p class="lead mb-0">${li.foodPrice}$</p>
			</div>
			
			  <div class="form-check">
  					
  					<label class="form-check-label" for="flexRadioDefault1" style="font-weight: bold;">
    				Delivery Time:
  					</label>
  					<p class="lead mb-0">${li.deliveryTime} Minutes</p>
			</div>
			
			</div>

          </div>
          <div class="card-body">

            <div class="d-flex justify-content-between mb-3">
            <c:choose>
            <c:when test="${sessionScope.user.userRole=='Admin'}">
            <a href="${pageContext.request.contextPath}/foodMenuEdit?id=${li.id}"><i class="fas fa-pen"></i></a>
     		<a href="${pageContext.request.contextPath}/foodMenuDelete?id=${li.id}&stallId=${li.stallId}"><i class="fas fa-trash"></i></a> 
            </c:when>
            <c:otherwise>
            <a href="${pageContext.request.contextPath}/addToCart?id=${li.id}">Add To Cart</a> 
            </c:otherwise>
                     
            </c:choose>
  
            </div>
            <div>
            </div>
           
          </div>
        </div>

   </div>
       </c:forEach>
       </div>
       </div>
 
 </section>
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
     
