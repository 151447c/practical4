<%--
  Created by IntelliJ IDEA.
  User: 151447c
  Date: 11/7/2016
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Duke's Bookstore</title></head>
<%@ page import="demo.*" %>
<%@ page import="java.util.List" %>
<%
    BookDBAO db = new BookDBAO();
    List<BookDetails> list = db.getAllBook();
%>
<body bgcolor="#ffffff">
<%@ include file="Header.html"%>
<br>
<h3>Please Choose from our selection</h3>
<br>
<center>
    <table summary="layout">
        <%
            for (BookDetails books:list){
        %>
        <tr>
            <td bgcolor="#ffffaa"><a href="/bookdetails?bookId=<%= books.getBookId() %>"> <strong><%= books.getTitle()%></strong></a></td>
            <td bgcolor="#ffffaa" rowspan=2><%=books.getPrice()%></td>
            <td bgcolor="#ffffaa" rowspan=2><a href="/bookcatalog?bookId=<%= books.getBookId() %>"> Add to Cart </a></td>
        </tr>
        <tr>
            <td>by<em> <%=books.getFirstName()+books.getSurname()%></em></td>
        </tr>
        <%
            }
        %>



    </table>
</center>
</body>
</html>
