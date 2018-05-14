<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>User Mgmnt</title>
</head>
<body>
<header>
        <div class="wrapper">
           <h1>
            User Management
            </h1> 
            <nav>
            <h2>Main Navigation</h2>
           
                <ul>
                    <%

If Currentpage =  "BookCreate" Then
Response.Write "<li><a href='Default.asp'>Home</a></li>"
 Response.Write  "<li><a href='BookCreate.asp'  class='current' >User Create</a></li>"
            Response.Write    "<li><a href='BookList.asp' >User List</a></li>"
ElseIf Currentpage =  "BookList" Then
  Response.Write "<li><a href='Default.asp'>Home</a></li>"
 Response.Write  "<li><a href='BookCreate.asp'   >User Create</a></li>"
            Response.Write    "<li><a href='BookList.asp' class='current'  >User List</a></li>"
Else
                        Response.Write "<li><a href='Default.asp' class='current' >Home</a></li>"
 Response.Write  "<li><a href='BookCreate.asp'  >User Create</a></li>"
            Response.Write    "<li><a href='BookList.asp' >User List</a></li>"
End If
%>
                
                    
                </ul>
            </nav>
        </div>
        </header>
</body>
</html>