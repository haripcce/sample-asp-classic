<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
<header>
        <div class="wrapper">
           <h1 class="logo">
            Marble
            </h1> 
            <nav>
            <h2>Main Navigation</h2>
            <div id="burger-nav"></div>
                <ul>
                    <%

If Currentpage =  "BookCreate" Then
Response.Write "<li><a href='Default.asp'>Home</a></li>"
 Response.Write  "<li><a href='BookCreate.asp'  class='current' >Book Create</a></li>"
            Response.Write    "<li><a href='BookList.asp' >Book List</a></li>"
ElseIf Currentpage =  "BookList" Then
  Response.Write "<li><a href='Default.asp'>Home</a></li>"
 Response.Write  "<li><a href='BookCreate.asp'   >Book Create</a></li>"
            Response.Write    "<li><a href='BookList.asp' class='current'  >Book List</a></li>"
Else
                        Response.Write "<li><a href='Default.asp' class='current' >Home</a></li>"
 Response.Write  "<li><a href='BookCreate.asp'  >Book Create</a></li>"
            Response.Write    "<li><a href='BookList.asp' >Book List</a></li>"
End If
%>
                
                    
                </ul>
            </nav>
        </div>
        </header>
</body>
</html>