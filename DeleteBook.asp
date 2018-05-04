
<%

bookId =request.querystring("bookId")

If  bookId <> "" Then
set Con=Server.CreateObject("ADODB.Connection")
Con.ConnectionString = "Provider=SQLOLEDB;Data Source =localhost;Database=aspclassic;User Id=sa;Password=Hari1990"
Con.Open

sql="DELETE FROM [dbo].[user] WHERE id="+bookId
  
on error resume next
Con.Execute sql

End If

Response.Redirect "BookList.asp"
 %>

        