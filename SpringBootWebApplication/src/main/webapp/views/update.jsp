<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <body bgcolor="pink">
        <h1>Edit User Data</h1>  
       <form:form method="POST" action="/editu">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>  
         <tr>    
            <td>Name :</td>    
            <td><form:input  path="name" /></td>  
           </tr>  
         <tr>    
          <td>Role : </td>   
          <td><form:input  path="role"  /></td>  
         </tr>    
         <tr>    
          <td>Mobile :</td>    
          <td><form:input path="mobile" /></td>  
         </tr>   
         <tr>    
            <td>Manager :</td>    
            <td><form:input path="manager" /></td>  
           </tr> 
           <tr>    
            <td>Office :</td>    
            <td><form:input path="office" /></td>  
           </tr>
           <tr>    
            <td>Join Date :</td>    
            <td><form:input path="join" /></td>  
           </tr>  
             

         <tr>    
          <td> </td>    
          <td><input type="submit" value="EditSave" /></td>    
         </tr>    
        </table>    
       </form:form>  
       <a href="/view">View Details</a>&nbsp;&nbsp;&nbsp;
       <a href="/">Home</a>  
       </body>