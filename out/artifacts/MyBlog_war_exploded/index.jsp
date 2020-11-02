<jsp:include page="common/tablib.jsp"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LifeBlog | Home</title>
    <jsp:include page="common/_css.jsp"/>
</head>
<body>
<jsp:include page="common/header.jsp"/>

<!-- Intro home-->
<div class="slider">

    <div class="Modern-Slider content-section" id="top">
        <!-- Item -->
        <div class="item item-1">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>My Life Blog and CV<br><span style="color:orange">Satellite | DoanDucTin</span></h1>
                        <p>Satellite is the nickname and also a free document website.<br>
                            Please share our site link to your friends.</p>
                        <br><hr><p>- de140094 | Doan Duc Tin
                        <div class="white-button button">
                            <a target="_blank" href="https://satellite-fpt.azurewebsites.net/" style="color:darkorange">Discover Satellite Official Website</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-2">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>Please tell <br>your friends about <span style="color:orange">Satellite</span></h1>
                        <p>Support us by download document and watch Ads.
                            <br>Thank you for helping us.</p>
                        <br><hr><p>- de140094 | Doan Duc Tin
                        <div class="white-button button">
                            <a href="#featured" style="color:darkorange">Share More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-3">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>View the hotest blog<br></h1>
                        <p>The blog written by admins about IT.</p>
                        <br><hr><p>- de140094 | Doan Duc Tin
                        <div class="white-button button">
                            <a href="#hotblog" style="color:darkorange">View</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
    </div>
</div>

<!-- Content -->
<div class="page-content">

    <!--
    <section id="featured" class="content-section">
        <div class="section-heading">
            <h1>Featured<br><em>Places</em></h1>
            <p>Praesent pellentesque efficitur magna,
                <br>sed pellentesque neque malesuada vitae.</p>
        </div>
        <div class="section-content">
            <div class="owl-carousel owl-theme">
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_1.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Lorem ipsum dolor</h4>
                        <span>Proin et sapien</span>
                        <p>#1 You are allowed to use Sentra Template for your business or client websites. You can use
                            it for commercial or non-commercial or educational purposes.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_2.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Phasellus a lacus ac odio</h4>
                        <span>Maximus</span>
                        <p>#2 You are NOT allowed to re-distribute this on any template website. You <strong>can
                            post</strong> a screenshot and a link back to original template page on your blog or site.
                            Thank you.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_3.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Proin sit amet fringilla</h4>
                        <span>Vulputate</span>
                        <p>#3 Aliquam mollis lacus eget metus efficitur lobortis. Suspendisse libero lacus, accumsan
                            vitae commodo tristique, luctus gravida metus.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_2.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>In volutpat augue lectus</h4>
                        <span>Elementum</span>
                        <p>#4 Aliquam mollis lacus eget metus efficitur lobortis. Suspendisse libero lacus, accumsan
                            vitae commodo tristique, luctus gravida metus.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_1.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Cras commodo odio</h4>
                        <span>Aliquam</span>
                        <p>#5 Mauris lacinia pretium libero, ut tincidunt lacus molestie ornare. Phasellus a facilisis
                            erat. Praesent eleifend nibh mauris, quis sodales lorem convallis pulvinar.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_3.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Sed at massa turpis</h4>
                        <span>Curabitur</span>
                        <p>#6 Vestibulum tincidunt ornare ligula vel molestie. Curabitur hendrerit mauris mollis ipsum
                            vulputate rutrum. Phasellus luctus odio eget dui imperdiet.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_2.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Aliquam mollis lacus</h4>
                        <span>Suspendisse</span>
                        <p>#7 Suspendisse suscipit nulla sed nisl fermentum, auctor suscipit nunc rhoncus. Proin
                            faucibus metus diam, nec hendrerit purus pharetra in.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_1.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Mauris lacinia pretium</h4>
                        <span>Vestibulum</span>
                        <p>#8 Suspendisse suscipit nulla sed nisl fermentum, auctor suscipit nunc rhoncus. Proin
                            faucibus metus diam, nec hendrerit purus pharetra in.</p>
                    </div>
                </div>
                <div class="item">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/template/img/featured_3.jpg" alt="">
                        <div class="featured-button button">
                            <a href="#projects">Continue Reading</a>
                        </div>
                    </div>
                    <div class="text-content">
                        <h4>Proin sit amet fringilla erat</h4>
                        <span>Convallis</span>
                        <p>#9 Suspendisse suscipit nulla sed nisl fermentum, auctor suscipit nunc rhoncus. Proin
                            faucibus metus diam, nec hendrerit purus pharetra in.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
    <div class="section-heading">
        <h1>Recent<br><em>Projects</em></h1>
        <p>Praesent pellentesque efficitur magna,
            <br>sed pellentesque neque malesuada vitae.</p>
    </div>
    <div class="section-content">
        <div class="masonry">
            <div class="row">
                <div class="item">
                    <div class="col-md-8">
                        <a href="${pageContext.request.contextPath}/template/img/portfolio_big_1.jpg"
                           data-lightbox="image"><img
                                src="${pageContext.request.contextPath}/template/img/portfolio_1.jpg" alt="image 1"></a>
                    </div>
                </div>
                <div class="item second-item">
                    <div class="col-md-4">
                        <a href="${pageContext.request.contextPath}/template/img/portfolio_big_2.jpg"
                           data-lightbox="image"><img
                                src="${pageContext.request.contextPath}/template/img/portfolio_2.jpg" alt="image 2"></a>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-4">
                        <a href="${pageContext.request.contextPath}/template/img/portfolio_big_3.jpg"
                           data-lightbox="image"><img
                                src="${pageContext.request.contextPath}/template/img/portfolio_3.jpg" alt="image 3"></a>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-4">
                        <a href="${pageContext.request.contextPath}/template/img/portfolio_big_4.jpg"
                           data-lightbox="image"><img src="img/portfolio_4.jpg" alt="image 4"></a>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-8">
                        <a href="${pageContext.request.contextPath}/template/img/portfolio_big_5.jpg"
                           data-lightbox="image"><img src="img/portfolio_5.jpg" alt="image 5"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
    -->

    <jsp:include page="common/footer.jsp"/>
</div>

<jsp:include page="common/_js.jsp"/>
</body>
</html>