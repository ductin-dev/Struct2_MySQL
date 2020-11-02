<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="edu.fpt.action.BlogController" %>
<%@ page import="edu.fpt.model.Blog.Blog" %>
<jsp:include page="${pageContext.request.contextPath}/common/tablib.jsp"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LifeBlog | Blog</title>
    <jsp:include page="${pageContext.request.contextPath}/common/_css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/common/header.jsp"/>

<!-- Content -->
<div class="page-content">
    <section id="blog" class="content-section">
        <div class="section-heading">
            <h1>LifeBlog entries on<br><em style="color:darkorange">Satellite</em></h1>
            <p>All the blog about IT can be found here.
                <br>Introduction | Tutorial | Technology | Knowledge | Algorithm</p>
            <a style="float: right" href="admin"><button class="warning" style="background-color:orange;border-radius: 8px;font-size: 30px;font-weight: 600;color:white">MANAGER BLOGS</button></a>
        </div>
        <div class="section-content">
            <div class="tabs-content">
                <div class="wrapper">
                    <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                        <li><a href="#tab1" class="active">IT & Technology</a></li>
                        <li><a href="#tab2">Life</a></li>
                        <li><a href="#tab3">TUT</a></li>
                        <li><a href="#tab4">Other</a></li>
                    </ul>
                    <section id="first-tab-group" class="tabgroup">
                        <div id="tab1">
                            <ul>
                                <c:if test="<%=BlogController.blogList_IT.isEmpty()%>"><p style="font-weight: 600;color:grey">Nothing to show</p></c:if>
                                <c:forEach var="i" items="<%=BlogController.blogList_IT%>">
                                <li style="width: 100%">
                                    <div class="item">
                                        <img src="${i.image}" alt="" style="max-width: 45%;min-width: 45%;height: 300px">
                                        <div class="text-content">
                                            <h4>${i.title}</h4>
                                            <span>${i.datecreated}&nbsp;&nbsp;-&nbsp;&nbsp;by&nbsp;${i.createdby}</span>
                                            <p>${i.description}</p>

                                            <div class="accent-button button">
                                                <form action="viewblog" method="GET">
                                                    <input name="viewingBlog_id" type="hidden" value="${i.id}">
                                                    <a href="#" onclick="this.parentNode.submit()" style="background-color:darkorange;">Continue Reading</a>
                                                </form>
                                            </div>

                                            <div style="display: inline-flex;padding: 50px 10px 0px 20px;">
                                                <p style="font-size: 18px;">
                                                    Views&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.view}</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                                        <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                                    </svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </p>
                                                <p style="font-size: 18px;">
                                                    Rate&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.rate}/5</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                                        </svg>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div id="tab2">
                            <ul>
                                <c:if test="<%=BlogController.blogList_Life.isEmpty()%>"><p style="font-weight: 600;color:grey">Nothing to show</p></c:if>
                                <c:forEach var="i" items="<%=BlogController.blogList_Life%>">
                                    <li style="width: 100%">
                                        <div class="item">
                                            <img src="${i.image}" alt="" style="max-width: 45%;min-width: 45%;height: 300px">
                                            <div class="text-content">
                                                <h4>${i.title}</h4>
                                                <span>${i.datecreated}&nbsp;&nbsp;-&nbsp;&nbsp;by&nbsp;${i.createdby}</span>
                                                <p>${i.description}</p>

                                                <div class="accent-button button">
                                                    <form action="viewblog" method="GET">
                                                        <input name="viewingBlog_id" type="hidden" value="${i.id}">
                                                        <a href="#" onclick="this.parentNode.submit()" style="background-color:darkorange;">Continue Reading</a>
                                                    </form>
                                                </div>

                                                <div style="display: inline-flex;padding: 50px 10px 0px 20px;">
                                                    <p style="font-size: 18px;">
                                                        Views&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.view}</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                                        <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                                    </svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </p>
                                                    <p style="font-size: 18px;">
                                                        Rate&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.rate}/5</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                                    </svg>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div id="tab3">
                            <ul>
                                <c:if test="<%=BlogController.blogList_TUT.isEmpty()%>"><p style="font-weight: 600;color:grey">Nothing to show</p></c:if>
                                <c:forEach var="i" items="<%=BlogController.blogList_TUT%>">
                                    <li style="width: 100%">
                                        <div class="item">
                                            <img src="${i.image}" alt="" style="max-width: 45%;min-width: 45%;height: 300px">
                                            <div class="text-content">
                                                <h4>${i.title}</h4>
                                                <span>${i.datecreated}&nbsp;&nbsp;-&nbsp;&nbsp;by&nbsp;${i.createdby}</span>
                                                <p>${i.description}</p>

                                                <div class="accent-button button">
                                                    <form action="viewblog" method="GET">
                                                        <input name="viewingBlog_id" type="hidden" value="${i.id}">
                                                        <a href="#" onclick="this.parentNode.submit()" style="background-color:darkorange;">Continue Reading</a>
                                                    </form>
                                                </div>

                                                <div style="display: inline-flex;padding: 50px 10px 0px 20px;">
                                                    <p style="font-size: 18px;">
                                                        Views&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.view}</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                                        <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                                    </svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </p>
                                                    <p style="font-size: 18px;">
                                                        Rate&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.rate}/5</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                                    </svg>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div id="tab4">
                            <ul>
                                <c:if test="<%=BlogController.blogList_Other.isEmpty()%>"><p style="font-weight: 600;color:grey">Nothing to show</p></c:if>
                                <c:forEach var="i" items="<%=BlogController.blogList_Other%>">
                                    <li style="width: 100%">
                                        <div class="item">
                                            <img src="${i.image}" alt="" style="max-width: 45%;min-width: 45%;height: 300px">
                                            <div class="text-content">
                                                <h4>${i.title}</h4>
                                                <span>${i.datecreated}&nbsp;&nbsp;-&nbsp;&nbsp;by&nbsp;${i.createdby}</span>
                                                <p>${i.description}</p>

                                                <div class="accent-button button">
                                                    <form action="viewblog" method="GET">
                                                        <input name="viewingBlog_id" type="hidden" value="${i.id}">
                                                        <a href="#" onclick="this.parentNode.submit()" style="background-color:darkorange;">Continue Reading</a>
                                                    </form>
                                                </div>

                                                <div style="display: inline-flex;padding: 50px 10px 0px 20px;">
                                                    <p style="font-size: 18px;">
                                                        Views&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.view}</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                                        <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                                    </svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </p>
                                                    <p style="font-size: 18px;">
                                                        Rate&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${i.rate}/5</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                                    </svg>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="${pageContext.request.contextPath}/common/footer.jsp"/>

</div>
<jsp:include page="${pageContext.request.contextPath}/common/_js.jsp"/>
</body>
</html>
