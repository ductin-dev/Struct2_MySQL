<%@ page import="edu.fpt.action.BlogController" %>
<jsp:include page="${pageContext.request.contextPath}/common/tablib.jsp"/>
<%
    if (session.getAttribute("user")==null){
        response.sendRedirect("login");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LifeBlog | Admin</title>
    <jsp:include page="${pageContext.request.contextPath}/common/_css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/common/header.jsp"/>

<!-- Content -->
<div class="page-content">
    <section id="video" class="content-section"  style="padding-top: 20px;">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h1>List of all blog to manager on <em style="color:orange">LifeBlog</em> by satellite.</h1>
                    <p>Do not copyright @ 2020 DoanDucTin</p>
                    <hr style="border: 1px solid darkgrey">
                </div>
            </div>
            <div class="col-md-12">
                <div class="section-heading"><a href="addblog"><button class="btn-blue" style="font-weight:700;background-color:darkgreen;color:white;border-radius: 5px;float:right;padding: 14px 50px 10px 50px;font-size:20px;font-family: arial;"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4a.5.5 0 0 0-1 0v3.5H4a.5.5 0 0 0 0 1h3.5V12a.5.5 0 0 0 1 0V8.5H12a.5.5 0 0 0 0-1H8.5V4z"/>
                </svg>&nbsp;&nbsp;WRITE NEW BLOG</button></a></div>
                <br>  <br>
                <table id="blogTable">
                    <thead>
                    <tr style="text-align: center">
                        <th>ID</th>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Image</th>
                        <th>View</th>
                        <th>Date Publish</th>
                        <th style="text-align: center">Wrote by</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="i" items="<%=BlogController.blogList%>">
                        <c:if test="${i.id%2 eq 0}">
                        <tr style="background-color: lightgray">
                            <td>${i.id}</td>
                            <td style="text-align: left">${i.title}</td>
                            <td>${i.category}</td>
                            <td><img src="${i.image}" width="80%" max-height="150px" alt=""/> </td>
                            <td>${i.view}</td>
                            <td>${i.datecreated}</td>
                            <td style="text-align: right">${i.createdby}</td>
                            <td>
                                <button onclick="editBlogForm(${i.id})" class="btn-warning" style="border-radius: 5px;margin-bottom: 8px;padding: 5px 30px 10px 30px;font-size:20px;font-family: arial;"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M5.707 13.707a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391L10.086 2.5a2 2 0 0 1 2.828 0l.586.586a2 2 0 0 1 0 2.828l-7.793 7.793zM3 11l7.793-7.793a1 1 0 0 1 1.414 0l.586.586a1 1 0 0 1 0 1.414L5 13l-3 1 1-3z"/>
                                    <path fill-rule="evenodd" d="M9.854 2.56a.5.5 0 0 0-.708 0L5.854 5.855a.5.5 0 0 1-.708-.708L8.44 1.854a1.5 1.5 0 0 1 2.122 0l.293.292a.5.5 0 0 1-.707.708l-.293-.293z"/>
                                    <path d="M13.293 1.207a1 1 0 0 1 1.414 0l.03.03a1 1 0 0 1 .03 1.383L13.5 4 12 2.5l1.293-1.293z"/>
                                </svg></button><br>
                                <button onclick="deleteBlogForm(${i.id})" class="btn-danger" style="border-radius: 5px;margin-bottom: 8px;padding: 5px 30px 10px 30px;font-size:20px;font-family: arial;"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-x-octagon-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.46.146A.5.5 0 0 0 11.107 0H4.893a.5.5 0 0 0-.353.146L.146 4.54A.5.5 0 0 0 0 4.893v6.214a.5.5 0 0 0 .146.353l4.394 4.394a.5.5 0 0 0 .353.146h6.214a.5.5 0 0 0 .353-.146l4.394-4.394a.5.5 0 0 0 .146-.353V4.893a.5.5 0 0 0-.146-.353L11.46.146zm.394 4.708a.5.5 0 0 0-.708-.708L8 7.293 4.854 4.146a.5.5 0 1 0-.708.708L7.293 8l-3.147 3.146a.5.5 0 0 0 .708.708L8 8.707l3.146 3.147a.5.5 0 0 0 .708-.708L8.707 8l3.147-3.146z"/>
                                </svg></button>
                            </td>
                        </tr>
                        </c:if>
                        <c:if test="${i.id%2 ne 0}">
                            <tr>
                                <td>${i.id}</td>
                                <td style="text-align: left">${i.title}</td>
                                <td>${i.category}</td>
                                <td><img src="${i.image}" width="80%" max-height="150px" alt=""/> </td>
                                <td>${i.view}</td>
                                <td>${i.datecreated}</td>
                                <td style="text-align: right">${i.createdby}</td>
                                <td>
                                    <button onclick="editBlogForm(${i.id})" class="btn-warning" style="border-radius: 5px;margin-bottom: 8px;padding: 5px 30px 10px 30px;font-size:20px;font-family: arial;"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M5.707 13.707a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391L10.086 2.5a2 2 0 0 1 2.828 0l.586.586a2 2 0 0 1 0 2.828l-7.793 7.793zM3 11l7.793-7.793a1 1 0 0 1 1.414 0l.586.586a1 1 0 0 1 0 1.414L5 13l-3 1 1-3z"/>
                                        <path fill-rule="evenodd" d="M9.854 2.56a.5.5 0 0 0-.708 0L5.854 5.855a.5.5 0 0 1-.708-.708L8.44 1.854a1.5 1.5 0 0 1 2.122 0l.293.292a.5.5 0 0 1-.707.708l-.293-.293z"/>
                                        <path d="M13.293 1.207a1 1 0 0 1 1.414 0l.03.03a1 1 0 0 1 .03 1.383L13.5 4 12 2.5l1.293-1.293z"/>
                                    </svg></button><br>
                                    <button onclick="deleteBlogForm(${i.id})" class="btn-danger" style="border-radius: 5px;margin-bottom: 8px;padding: 5px 30px 10px 30px;font-size:20px;font-family: arial;"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-x-octagon-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M11.46.146A.5.5 0 0 0 11.107 0H4.893a.5.5 0 0 0-.353.146L.146 4.54A.5.5 0 0 0 0 4.893v6.214a.5.5 0 0 0 .146.353l4.394 4.394a.5.5 0 0 0 .353.146h6.214a.5.5 0 0 0 .353-.146l4.394-4.394a.5.5 0 0 0 .146-.353V4.893a.5.5 0 0 0-.146-.353L11.46.146zm.394 4.708a.5.5 0 0 0-.708-.708L8 7.293 4.854 4.146a.5.5 0 1 0-.708.708L7.293 8l-3.147 3.146a.5.5 0 0 0 .708.708L8 8.707l3.146 3.147a.5.5 0 0 0 .708-.708L8.707 8l3.147-3.146z"/>
                                    </svg></button>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <hr style="border: 1px solid darkgrey">
    <jsp:include page="${pageContext.request.contextPath}/common/footer.jsp"/>
</div>

<jsp:include page="${pageContext.request.contextPath}/common/_js.jsp"/>
<form id="editingBlog_form" action="editblog">
    <input name="editingBlog_id" type="hidden" id="editingBlog_id">
</form>
<form id="deletingBlog_form" action="deleteblog">
    <input name="deletingBlog_id" type="hidden" id="deletingBlog_id">
</form>
<script>
    function editBlogForm(x){
        document.getElementById("editingBlog_id").value=x;
        document.getElementById("editingBlog_form").submit();
    }
    function deleteBlogForm(x){
        document.getElementById("deletingBlog_id").value=x;
        document.getElementById("deletingBlog_form").submit();
    }
</script>
</body>
</html>
