<!DOCTYPE html>
<html>

    <head>
        <title>Marble : Book List</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta name="viewport"
              content="width=device-width">
        <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
    </head>
    
    <body>
        <%
            Currentpage = "BookList"

            


            %>
        <!--#include file ="Header.asp"-->
       
        <main class="wrapper">
        
        <h1>Book List</h1>
            
          




     <table>
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Address Line 1</th>
  </tr>
  <tr>
    <td><%=request.querystring("firstName")%></td>
    <td><%=request.querystring("lastName")%></td>
    <td><%=request.querystring("address1")%></td>
  </tr>
  
</table>
       
        </main>
        
       
        <!--#include file ="Quote.asp"-->
       <!--#include file="Footer.asp"-->
        
    </body>
<script src="jquery-3.3.1.min.js"></script>   
<script src="menu.js"></script>


</html>