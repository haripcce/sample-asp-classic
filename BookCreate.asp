<!DOCTYPE html>
<html>

    <head>
        <title>Marble : Book Create</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta name="viewport"
              content="width=device-width">
        <style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width:100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
    
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
    </head>
    
    <body>
       <%
            Currentpage = "BookCreate"
            %>
        <!--#include file ="Header.asp"-->
       
        <main class="book-create">
        
        <h1>Book Create</h1>
            
          <div>
  <form action="BookList.asp">
    <label for="firstName">First Name</label>
    <input type="text" id="firstName" name="firstName" placeholder="Your name..">

    <label for="lastName">Last Name</label>
    <input type="text" id="lastName" name="lastName" placeholder="Your last name..">

    <label for="address1">Address Line 1</label>
    <input type="text" id="address1" name="address1" placeholder="Your address line 1..">

    
  
    <input type="submit" value="Submit">
  </form>
</div>
            
        </main>

        <!--#include file ="Quote.asp"-->
       <!--#include file="Footer.asp"-->
        
    </body>
 <script src="jquery-3.3.1.min.js"></script>   
<script src="menu.js"></script>


</html>