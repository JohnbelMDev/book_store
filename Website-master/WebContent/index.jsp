<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ page import="cit285.book.dao.BookDao" %>

<%@ page import="cit285.book.domain.Author" %>

<%@ page import="cit285.book.domain.Book" %>

<%@ page import="java.util.ArrayList" %>





<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="css/styles.css">

</head>

<body>



 

<header>

        <div class="header-top">

            <div class="container">

                <div class="row">

                    <div class="col-md-3"><a href="#" class="web-url">www.bookstore.com</a></div>

                    <div class="col-md-6">

                        <h5>Free Shipping Over $99 + 3 Free Samples With Every Order</h5></div>

                    <div class="col-md-3">

                        <span class="ph-number">Call : 800 1234 5678</span>

                    </div>

                </div>

            </div>

        </div>

        <div class="main-menu">

            <div class="container">

                <nav class="navbar navbar-expand-lg navbar-light">

                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">

                        <span class="navbar-toggler-icon"></span>

                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">

                        <ul class="navbar-nav ml-auto">

                            <li class="navbar-item active">

                                <a href="index.html" class="nav-link">Home</a>

                            </li>

                            <li class="navbar-item">

                                <a href="shop.html" class="nav-link">Shop</a>

                            </li>

                            <li class="navbar-item">

                                <a href="about.html" class="nav-link">About</a>

                            </li>

                            <li class="navbar-item">

                                <a href="faq.html" class="nav-link">FAQ</a>

                            </li>

                            <li class="navbar-item">

                                <a href="login.html" class="nav-link">Login</a>

                            </li>

                        </ul>

                        <div class="cart my-2 my-lg-0">

                            <span>

                                <i class="fa fa-shopping-cart" aria-hidden="true"></i></span>

                            <span class="quntity">3</span>

                        </div>

                        <form class="form-inline my-2 my-lg-0">

                            <input class="form-control mr-sm-2" type="search" placeholder="Search here..." aria-label="Search">

                            <span class="fa fa-search"></span>

                        </form>

                    </div>

                </nav>

            </div>

        </div>

    </header>

    <section class="slider">

        <div class="container">

            <div id="owl-demo" class="owl-carousel owl-theme">

                <div class="item">

                    <div class="slide">

                        <img src="images/slide1.jpg" alt="slide1">

                        <div class="content">

                            <div class="title">

                                <h3>welcome to bookstore</h3>

                                <h5>Discover the best books online with us</h5>

                                <a href="#" class="btn">shop books</a>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="item">

                    <div class="slide">

                        <img src="images/slide2.jpg" alt="slide1">

                        <div class="content">

                            <div class="title">

                                <h3>welcome to bookstore</h3>

                                <h5>Discover the best books online with us</h5>

                                <a href="#" class="btn">shop books</a>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="item">

                    <div class="slide">

                        <img src="images/slide3.jpg" alt="slide1">

                        <div class="content">

                            <div class="title">

                                <h3>welcome to bookstore</h3>

                                <h5>Discover the best books online with us</h5>

                                <a href="#" class="btn">shop books</a>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="item">

                    <div class="slide">

                        <img src="images/slide4.jpg" alt="slide1">

                        <div class="content">

                            <div class="title">

                                <h3>welcome to bookstore</h3>

                                <h5>Discover the best books online with us</h5>

                                <a href="#" class="btn">shop books</a>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <section class="recomended-sec">

        <div class="container">

            <div class="title">

                <h2>highly recommendes books</h2>

                <hr>

            </div>

            <div class="row">

                <div class="col-lg-3 col-md-6">

                    <div class="item">

                        <img src="images/img1.jpg" alt="img">

                        <h3>how to be a bwase</h3>

                        <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>

                        <div class="hover">

                            <a href="product-single.html">

                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-lg-3 col-md-6">

                    <div class="item">

                        <img src="images/img2.jpg" alt="img">

                        <h3>How to write a book...</h3>

                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>

                        <span class="sale">Sale !</span>

                        <div class="hover">

                            <a href="product-single.html">

                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-lg-3 col-md-6">

                    <div class="item">

                        <img src="images/img3.jpg" alt="img">

                        <h3>7-day self publish...</h3>

                        <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>

                        <div class="hover">

                            <a href="product-single.html">

                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-lg-3 col-md-6">

                    <div class="item">

                        <img src="images/img4.jpg" alt="img">

                        <h3>wendy doniger</h3>

                        <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>

                        <div class="hover">

                            <a href="product-single.html">

                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>

                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <section class="about-sec">

        <div class="about-img">

            <figure style="background:url(./images/about-img.jpg)no-repeat;"></figure>

        </div>

        <div class="about-content">

            <h2>About bookstore,</h2>

            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printer took a galley of type and Scrambled it to make a type and typesetting industry. Lorem Ipsum has been the book. </p>

            <p>It has survived not only fiveLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printer took a galley of type and</p>

            <div class="btn-sec">

                <a href="shop.html" class="btn yellow">shop books</a>

                <a href="login.html" class="btn black">subscriptions</a>

            </div>

        </div>

    </section>

    <div class="container">

 

        <div class="row">



<%

BookDao bookdao = new BookDao();

ArrayList<Book> bookList = new ArrayList<Book>(bookdao.getBooks());

for(Book book: bookList){

%>

                <div class="col-lg-2 col-md-3 col-sm-4">

                    <div class="item">

                        <img src="images/r1.jpg" alt="img">

                        <h3><a href="#"> <%=book.getTitle() %></a></h3>

                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>

                    </div>

                </div>

                 



               

<%}%>

                </div>



</div>

</body>

</html>