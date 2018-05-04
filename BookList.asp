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
set Con=Server.CreateObject("ADODB.Connection")
Con.ConnectionString = "Provider=SQLOLEDB;Data Source =localhost;Database=aspclassic;User Id=sa;Password=Hari1990"
Con.Open

           firstName = request.querystring("firstName")
             lastName = request.querystring("lastName")
             address1 = request.querystring("address1")
            IF (firstName <> "" and lastName <> "" and address1 <> "") Then
            sql="INSERT INTO [dbo].[user] ([first_name] ,[last_name] ,[address_line_1])"

sql=sql & " VALUES "
sql=sql & "('" & firstName & "',"
sql=sql & "'" & lastName & "',"
sql=sql & "'" & address1 & "')"
  
on error resume next
Con.Execute sql,recaffected

End If
            %>

        <%



set rs=Server.CreateObject("ADODB.recordset")
rs.Open "Select * from [user];", Con


%>


        <!--#include file ="Header.asp"-->
       
        <main class="wrapper">
        
        <h1>Book List</h1>
            
  <table>
  <tr>
       <th>Sr. No.</th>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Address Line 1</th>
  </tr>   
     
<%
set rs=Server.CreateObject("ADODB.recordset")
rs.Open "Select * from [user];", Con

Do Until rs.EOF
  
%>

  
     <tr>
         <td><%=rs("id")%></td>
  <td><%=rs("first_name")%></td>
  <td><%=rs("last_name")%></td>
  <td><%=rs("address_line_1")%></td>
  </tr>
 <%
rs.Movenext
Loop

     Con.Close
%> 
          
</table>     
        </main>
        
       
        <!--#include file ="Quote.asp"-->
       <!--#include file="Footer.asp"-->
        
    </body>
<script src="jquery-3.3.1.min.js"></script>   
<script src="menu.js"></script>


</html>