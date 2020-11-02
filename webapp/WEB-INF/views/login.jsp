<jsp:include page="${pageContext.request.contextPath}/common/tablib.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LifeBlog | Login</title>
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

<!-- Intro home-->
<div class="slider">

    <div class="Modern-Slider content-section" id="top">
        <!-- Item -->
        <div class="item item-1">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>Login Now !<br><span style="color:orange">to access all the features</span></h1>
                        <p>Verify you are the blogger.<br>
                            The register not currently available.</p>
                        <hr>
                        <c:if test="${sessionScope.log_login ne null}">
                            <div class="errors">
                                <p style="color:darkred">${sessionScope.log_login}</p>
                            </div>
                            <c:set var="log_login" value="${null}" scope="session"/>
                        </c:if>
                        <form id="userloginform" action="userlogin" method="post">
                            <h4 style="color:white">Type username or email</h4>
                            <input name="username" type="text" style="font-size: 20px;width: 60%"/>
                            <br><br>
                            <h4 style="color:white">Type password</h4>
                            <input name="password" type="password" style="font-size: 20px;width: 60%"/>
                            <br>
                            <hr>
                            <div class="white-button button">
                                <a onclick="submit1()" style="background-color:orange;padding-left: 60px;padding-right: 60px;color:white;font-weight: 700">Login</a>
                            </div>
                        </form>
                        <script>
                            function submit1(){
                                document.getElementById("userloginform").submit();
                            }
                        </script>
                        <br>
                        <hr>
                        <p>- admin only
                        <div class="white-button button">
                            <a target="_blank" href="https://satellite-fpt.azurewebsites.net/" style="color:darkorange">Discover
                                Satellite Official Website</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
    </div>
</div>

<jsp:include page="${pageContext.request.contextPath}/common/_js.jsp"/>
</body>
</html>