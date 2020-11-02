<header class="nav-down responsive-nav hidden-lg hidden-md" >
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <!--/.navbar-header-->
    <div id="main-nav" class="collapse navbar-collapse">
        <nav>
            <ul class="nav navbar-nav">
                <c:if test="${sessionScope.user eq null}">
                <li><a href="login" style="color:orange;font-weight: 700">Login</a></li>
                </c:if>
                <c:if test="${sessionScope.user ne null}">
                    <li><a href="logout" style="color:orange;font-weight: 700">Logout</a></li>
                </c:if>
                <li><a href="home">Home</a></li>
                <li><a href="blog">Blog</a></li>
                <li><a href="cv">CV</a></li>
                <li><a href="cer">Certification</a></li>
                <c:if test="${sessionScope.user ne null}">
                <li><a href="admin">Admin</a></li></c:if>
                <li><a href="credit">Credit</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="sidebar-navigation hidde-sm hidden-xs">
    <div class="logo" style="background-color:darkorange">
        <img class="img-responsive" src="${pageContext.request.contextPath}/resource/Team%20Logo.png" alt=""/>
    </div>
    <nav>
        <ul>
            <li>
                <c:if test="${sessionScope.user eq null}">
                    <a href="login" style="color:orange;font-weight: 700">
                        <span id="nav" class="rect"></span>
                        <span class="circle"></span>
                        Login
                    </a>
                </c:if>
                <c:if test="${sessionScope.user ne null}">
                    <a href="logout" style="color:orange;font-weight: 700">
                        <span id="nav0" class="rect"></span>
                        <span class="circle"></span>
                        Logout
                    </a>
                 </c:if>
            </li>
            <li>
                <a href="home">
                    <span id="nav1" class="rect"></span>
                    <span class="circle"></span>
                    Home
                </a>
            </li>
            <li>
                <a href="blog">
                    <span id="nav2" class="rect"></span>
                    <span class="circle"></span>
                    Blog
                </a>
            </li>
            <li>
                <a href="cv">
                    <span id="nav3" class="rect"></span>
                    <span class="circle"></span>
                    CV
                </a>
            </li>
            <li>
                <a href="cer">
                    <span id="nav4" class="rect"></span>
                    <span class="circle"></span>
                    Certification
                </a>
            </li>
            <c:if test="${sessionScope.user ne null}">
            <li>
                <a href="admin">
                    <span id="nav5" class="rect"></span>
                    <span class="circle"></span>
                    Admin
                </a>
            </li>
            </c:if>
            <li>
                <a href="credit">
                    <span id="nav6" class="rect"></span>
                    <span class="circle"></span>
                    Credit
                </a>
            </li>
        </ul>
    </nav>
    <ul class="social-icons">
        <li><a href="https://www.facebook.com/satfomacej" target="_blank"><i class="fa fa-facebook"></i></a></li>
        <li><a href="https://www.instagram.com/ductinitlk/?hl=en" target="_blank"><i class="fa fa-instagram"></i></a></li>
        <li><a href="https://www.youtube.com/channel/UC5GhMOrdYiRoSQqikipk26Q?view_as=subscriber" target="_blank"><i class="fa fa-youtube"></i></a></li>
        <li><a href="https://twitter.com/oncTn3" target="_blank"><i class="fa fa-twitter"></i></a></li>
        <li><a href="https://github.com/satellite1012" target="_blank"><i class="fa fa-github"></i></a></li>


    </ul>
</div>
