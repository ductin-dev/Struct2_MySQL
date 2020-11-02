<jsp:include page="${pageContext.request.contextPath}/common/tablib.jsp"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%request.setAttribute("thisBlog",request.getAttribute("viewingBlog"));%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LifeBlog | ViewBlog</title>
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
                    <h1>You viewing a blog on <em style="color:orange">LifeBlog</em> by satellite.</h1>
                    <p>Do not copyright @ 2020 DoanDucTin</p>
                    <hr style="border: 1px solid darkgrey">
                    <p style="float:left"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                    </svg>&nbsp;&nbsp;Wrote by <span style="color:darkorange;font-weight: 600;">${thisBlog.createdby}</span></p>
                    <p style="float:right"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar-check-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2zm-5.146-5.146a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg>&nbsp;&nbsp;Publish date <span style="color:darkorange;font-weight: 600;">${thisBlog.datecreated}</span></p>
                    <p style="float:right"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar3-range" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z"/>
                        <path fill-rule="evenodd" d="M7 10a1 1 0 0 0 0-2H1v2h6zm2-3a1 1 0 0 1 0-2h6v2H9z"/>
                    </svg>&nbsp;&nbsp;Active date <span style="color:darkorange;font-weight: 600;">${thisBlog.datemodified}</span>&nbsp;&nbsp;&nbsp;</p>
                    <br><br><br>
                </div>
                <div class="text-content" >
                    <h1 style="font-weight: 700">${thisBlog.title}</h1>
                    <p>${thisBlog.description}</p>
                </div>
            </div>
            <div class="col-md-12">
                <div class="box-video">
                    <div class="video-container">
                        <img src="${thisBlog.image}" alt=""/>
                    </div>
                </div>
                <br><br>
                <div style="font-size: 22px;text-align: left">
                    <p>${thisBlog.text}</p>
                </div>
            </div>

            <div style="display: inline-flex;padding: 50px 10px 0px 20px;">
                <p style="font-size: 18px;">
                    Views&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${thisBlog.view}</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                    <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                </svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
                <p style="font-size: 18px;">
                    Rate&nbsp;&nbsp;<span style="font-size: 18px;color:orange">${thisBlog.rate}/5</span>&nbsp;&nbsp;<svg style="color:orange" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
                </p>
            </div>
        </div>
    </section>

    <hr style="border: 1px solid darkgrey">

    <jsp:include page="${pageContext.request.contextPath}/common/footer.jsp"/>
</div>

<jsp:include page="${pageContext.request.contextPath}/common/_js.jsp"/>
</body>
</html>
