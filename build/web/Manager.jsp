<%-- 
    Document   : Manager
    Created on : Mar 15, 2024, 5:41:22 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <link href="./style.css" type="text/css" rel="stylesheet">
    </head>
    <body style="background-color: #ffba8e">
        <header>
            <h1> <a href="home" title="Chúng ta" class="logo"><img
                        src="https://st.chungta.vn/v355/chungta/images/graphics/logo_chungta.svg" alt="Chúng ta"></a>
            </h1>
            <div class="header-infor">
                <a href="updateUser">User: ${sessionScope.user.name} |&nbsp;&nbsp;&nbsp;</a>
                <a href="logout">Log out</a>
            </div>
            <div>
                <nav>
                    <ul>
                        <li><a href="home">Home</a></li>
                        <li><a href="manager">Quản lý</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <section>  
            <div class="manage-atten">
                <h3>Vui lòng chọn bảng quản lý</h3>
            </div>
        </section>
        <section>
            <nav class="manage-nav">
                <ul>
                    <li><a href="article"><img src="https://cdn-icons-png.flaticon.com/128/81/81460.png"></a></li>
                    <li><a href="user"><img src="https://cdn-icons-png.flaticon.com/128/747/747376.png"></a></li>                 
                    <li><a href="comment"><img src="https://cdn-icons-png.flaticon.com/128/4249/4249907.png"></a></li>  
                </ul>
            </nav>
        </section>
        <section>
            <nav class="manage-nav">
                <ul>
                    <li><a href="article">Article</a></li>
                    <li><a href="user">User</a></li>
                    <li><a href="comment">Comment</a></li>
                </ul>
            </nav>
        </section>
        <footer>
            <div class="footer-div">
                <a href="home"><img
                        src="https://st.chungta.vn/v355/chungta/images/graphics/logo_chungta.svg" alt="Chúng ta"></a>
                <p>© 2023 Chungta, chuyên trang nội bộ của Tập đoàn FPT. Chungta giữ bản quyền nội
                    dung trên website này.</p>
                <p> Edited by trungdthe172400</p>
                <p class="product">
                    <span>Một sản phẩm của </span>
                    <span><img src="https://st.chungta.vn/v355/chungta/images/graphics/logo_fpt.svg"
                               alt="Fpt"></span>
                </p>
            </div>
        </footer>
    </body>
</html>

