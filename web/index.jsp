<%--
  Created by IntelliJ IDEA.
  User: 151447c
  Date: 11/7/2016
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Duke"s Bookstore</title>
  </head>
  <%@page import="demo.*"%>
  <%
    BookDBAO db = new BookDBAO();
    BookDetails book = db.getBook();
  %>
  <body bg color="#ffffff">
    <%@ include file="Header.html"%>
  <br><b>What we are reading</b>
  <blockquote><em><a href="bookdetails?bookId=<%=book.getBookId()%>"><%=book.getTitle()%>></a> </em>What a cool book.</blockquote>
  <p><a href="bookcatalog"><b>Start Shopping</b></a></p>
  </body>
</html>
