<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<style>
a{
text-decoration: none;
padding:6px 15px;
border-radius:4px;
font-weight: 600;
text-transform: uppercase;
border:0.7px solid black;

}
.up{
background-color:yellow;
color:black;
}
.del{
background-color:red;
color:white;
}
.head{
color:red;
}
</style>
 <body > 
<table align="center" cellspacing="10" cellpadding="10">
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="/">Home</a></td>
    <td><a href="/req1">Registration</a></td>
  </tr>
<tr>
<th>ID</th>
<th>NAME</th>
<th>ROLE</th>
<th>MOBILE</th>
<th>MANAGER</th>
<th>OFFICE</th>
<th>JOIN DATE</th>
<th>UPDATE</th>
<th>DELETE</th>
</tr>
 <c:forEach var="user" items="${users}">   
   <tr>  
   <td>${user.id}</td>  
   <td>${user.name}</td>  
   <td>${user.role}</td>  
   <td>${user.mobile}</td>  
   <td>${user.manager}</td> 
   <td>${user.office}</td>
   <td>${user.join}</td>
   <td><a href="update/${user.id}" class="up">Update</a></td>   
   <td><a href="deleteuser/${user.id}" class="del">Delete</a></td>   
    </tr>  
   </c:forEach> 
</table>
</body>
  
 