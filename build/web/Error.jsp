<%-- 
    Document   : Error
    Created on : Mar 15, 2024, 5:35:43 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <link href="style.css" type="text/css" rel="stylesheet">

    </head>
    <body style="background-color: #ffba8e">
        <header>
            <h1> <a href="home" title="Chúng ta" class="logo"><img
                        src="https://st.chungta.vn/v355/chungta/images/graphics/logo_chungta.svg" alt="Chúng ta"></a>
            </h1>
        </header>
        <section>  
            <div class="error-atten">
                <img class="404-image" src="https://bstyle.vn/wp-content/uploads/2020/01/truong-gia-binh.jpg">
            </div>
            <div class="error-atten">
                <h1>Hình như trang bạn muốn đến không tồn tại rồi. Mình về Home nhé (nhấn vào logo nha)</h1>
            </div>
            <c:if test="${sessionScope.user == null}">
                <div class="error-atten">
                    <h1>Bạn chưa đăng nhập á? Ấn login để đăng nhập nha</h1>
                </div>
                <div class="manage-atten">
                    <form action="login">
                        <input type="submit" value="Login" style="width: 50px; height: 25px">
                    </form>
                </div>
            </c:if>

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
