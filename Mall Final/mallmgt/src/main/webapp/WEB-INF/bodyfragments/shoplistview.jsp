<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<style><%@include file="/WEB-INF/css/moviegrid.css"%></style>

 <section style="background-color: white;">

  <div class="container py-3 content">
  <div class="row">
  
    <c:forEach items="${list}" var="li" varStatus="u">
    <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">	
        <div class="card">
          <div class="d-flex justify-content-between p-3">
            <p class="lead mb-0" style="font-weight: bold;">Shop Name: ${li.shopName}</p>
          </div>
          <img alt="" src="${pageContext.request.contextPath}/getShopImage/${li.id}" class="card-img-top" height="300px">
          <div class="card-body">

            <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Owner Name</h5>
              <h5 class="text-dark mb-0">$ ${li.ownerName} </h5>
            </div>

            <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Contact Number</h5>
              <h5 class="text-dark mb-0">${li.contactNumber}</h5>
            </div>
            
             <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Email</h5>
              <h5 class="text-dark mb-0">${li.email}</h5>
            </div>
            
             <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Opening Time</h5>
              <h5 class="text-dark mb-0">${li.openingTime}</h5>
            </div>
            
             <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Closing Time</h5>
              <h5 class="text-dark mb-0">${li.closingTime}</h5>
            </div>
            
            
            <div>
             <div class="col-md-6 mb-4">
             
             <c:choose>
             
             <c:when test="${sessionScope.user.userRole == 'Admin'}">
                <div class="d-flex justify-content-between mb-3">
             <a href="${pageContext.request.contextPath}/shopEdit?id=${li.id}"><i class="fas fa-pen"></i></a>
            </div>
               <div class="d-flex justify-content-between mb-3">
             <a href="${pageContext.request.contextPath}/shopDelete?id=${li.id}"><i class="fas fa-trash"></i></a> 
              </div>
             </c:when>
             <c:otherwise>
  
             
             </c:otherwise>
             </c:choose>
    
             </div>
            </div>
            
         
          </div>
        </div>

   </div>
       </c:forEach>
       </div>
       </div>
 
 </section>
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
     
