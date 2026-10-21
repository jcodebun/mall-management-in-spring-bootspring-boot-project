<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<style><%@include file="/WEB-INF/css/movielistview.css"%></style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body >

<div class="container content">
<h2 style="padding-top: 30px;padding-bottom: 20px;">Job List</h2>
</div>



<div class="container content">
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Job Name</th>
      <th scope="col">Description</th>    
      <th scope="col">Contact Number</th>
      <th scope="col">Email</th>
 
        <c:choose>
      <c:when test="${sessionScope.user.userRole=='Admin'}"> 
      <th scope="col">Action</th>
      </c:when>
     <c:otherwise>
     
      <th scope="col">Action</th>
     </c:otherwise>
      </c:choose>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="li" varStatus="u">
    <tr>     
      <td>${li.jobName}</td>
      <td>${li.description}</td>
      <td>${li.contactNumber}</td>
      <td>${li.email}</td>
  <c:choose>
      <c:when test="${sessionScope.user.userRole=='Admin'}">  
       <td> 
      <a href="${pageContext.request.contextPath}/jobEdit?id=${li.id}" ><i class="fas fa-pen"></i></a>
     
      <a href="${pageContext.request.contextPath}/jobDelete?id=${li.id}"><i class="fas fa-trash"></i></a> 
      
      <a href="${pageContext.request.contextPath}/applyJob?id=${li.id}" class="btn btn-info">Apply</a>
  
      </td>
      </c:when>
        <c:otherwise>
      <td> 
      <a href="${pageContext.request.contextPath}/applyJob?id=${li.id}" class="btn btn-info">Apply</a>
       </td>
      </c:otherwise> 
      
      </c:choose> 
       

    </tr>
   </c:forEach>
  </tbody>
</table>

</div>

</body>
</html>