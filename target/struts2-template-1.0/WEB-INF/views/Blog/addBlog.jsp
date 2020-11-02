<jsp:include page="${pageContext.request.contextPath}/common/tablib.jsp"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%request.setAttribute("thisBlog",request.getAttribute("viewingBlog"));%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LifeBlog | ViewBlog</title>
    <jsp:include page="${pageContext.request.contextPath}/common/_css.jsp"/>
    <style>
        .errors {
            background-color: #FFCCCC;
            border: 1px solid #CC0000;
            margin-bottom: 8px;
            padding-top: 5px;
            color:darkred;
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/common/header.jsp"/>

<!-- Content -->
<div class="page-content">

    <div class="col-md-12">
        <div class="section-heading" style="padding-top: 35px;">
            <h1>Add new blog to&nbsp;<em style="color:orange">LifeBlog</em> here.</h1>
            <hr style="border: 1px solid darkgrey">
        </div>
    </div>
    <c:if test="${sessionScope.log_blogadd ne null}">
        <div class="errors">
            <p style="color:darkred">${sessionScope.log_blogadd}</p>
        </div>
        <c:set var="log_blogadd" value="${null}" scope="session"/>
    </c:if>
    <form id="blodAddForm" action="addnewblog" method="post" style="margin-left: 20px;">
        <h4 style="font-weight: 700;color:orange">Blog Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="title" type="text"/></h4>
        <h4 style="font-weight: 700;"> Intruduction&nbsp;&nbsp;<textarea name="description"></textarea></h4><br><hr><br>
        <textarea name="blogContent" id="editor">
            &lt;p style="color:red" >This is some sample content: DoanDucTin SE1403&lt;/p&gt;
             <br>   <br>   <br>   <br>   <br>   <br>   <br>   <br>
             &lt;p style="color:orange" >CopyRight 2020@Satellite | DoanDucTin&lt;/p&gt;
        </textarea>
        <h4>Sample image here&nbsp;&nbsp;<input name="image" type="text"/></h4><br>
        <h4>Author&nbsp;&nbsp;<input name="createdby" type="text"/></h4><br>
        <h4>Category <span style="color:red">(defaut: "OTHER")</span>&nbsp;&nbsp;<input name="category" type="text"/></h4><br><br>
        <div class="section-heading">
            <button style="padding: 10px 30px 10px 30px;font-weight: 700;color:white;background-color: darkorange" onclick="submitBlogForm()"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cloud-upload" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M4.406 1.342A5.53 5.53 0 0 1 8 0c2.69 0 4.923 2 5.166 4.579C14.758 4.804 16 6.137 16 7.773 16 9.569 14.502 11 12.687 11H10a.5.5 0 0 1 0-1h2.688C13.979 10 15 8.988 15 7.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 2.825 10.328 1 8 1a4.53 4.53 0 0 0-2.941 1.1c-.757.652-1.153 1.438-1.153 2.055v.448l-.445.049C2.064 4.805 1 5.952 1 7.318 1 8.785 2.23 10 3.781 10H6a.5.5 0 0 1 0 1H3.781C1.708 11 0 9.366 0 7.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z"/>
                <path fill-rule="evenodd" d="M7.646 4.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V14.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3z"/>
            </svg>&nbsp;&nbsp;Save and Publish now</button>
        </div>
    </form>
    <script>
        function submitBlogForm(){
            document.getElementById("blodAddForm").submit();
        }
    </script>

    <hr style="border: 1px solid darkgrey">

    <jsp:include page="${pageContext.request.contextPath}/common/footer.jsp"/>
</div>

<jsp:include page="${pageContext.request.contextPath}/common/_js.jsp"/>
</body>
</html>
