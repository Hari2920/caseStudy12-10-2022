<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
            <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CompanyShareList</title>
<style>
h1{
 font-style: italic;
 color:red;
  text-decoration: underline;
 }
 h3{
   font-style: italic;
   color:red;
    text-decoration: underline;
 }
 div{
 text-align:center;
 }
</style>
</head>
<body>
<div>
<h1>
Company Share List
</h1>
<h3>
<a href="company-entry">Enlist a new company</a>
</h3>
<hr size="5" color="cyan"/>
<h2>
<table border="2">
  <tr>
    <th>Company Id</th>
    <th>Company Name</th>
    <th>Share PRICE</th>
    <th>Action</th>
    
    </tr>
    <c:forEach  items="${cshareList}" var="company">
      <tr>
      <td>${company.companyId}</td>
      <td>${company.companyName}</td>
      <td>${company.sharePrice}</td>
      <td><h3>
       &nbsp;&nbsp;<a href="edit-share/${company.companyId}">Edit Share Price</a> 
       &nbsp;&nbsp;<a href="delete-company/${company.companyId}">Delete Company</a>
       </h3></td>
      </tr>
     </c:forEach>
  </table>
  </h2>





</div>
</body>
</html>