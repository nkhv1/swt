<%-- 
    Document   : UpdateUser
    Created on : Mar 15, 2024, 7:29:21 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update user for user</title>
        <link href="./style.css" type="text/css" rel="stylesheet">
    </head>
    <body style="background-color: #ffba8e;">
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
                    </ul>
                </nav>
            </div>
        </header>
        <div style="margin-left: 10px">
            <h3>Detail & update user:</h3>
            <p>(You can only update name or password)</p>
            <c:set var="u" value="${sessionScope.user}"/>
            <form action="updateUser" method="post">
                <p>ID: <input type="text" name="id" value="${u.id}" readonly></p>
                <p>Name: <input type="text" name="name" value="${u.name}" required=""></p>
                <p>Account: <input type="text" name="acc" value="${u.account}"  readonly=""></p>
                <p>Password: <input type="text" name="pass" value="${u.password}" required=""></p>
                <p>Email: <input type="text" name="email" value="${u.email}" readonly=""></p>
                <input type="hidden" name="role" value="${u.role}">
                <input type="submit" value="Update">
            </form>
            <h3>${sessionScope.ok}</h3>
            <%
                request.getSession().removeAttribute("ok");
            %>
        </div>
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
