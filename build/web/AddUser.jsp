<%-- 
    Document   : AddUser
    Created on : Mar 15, 2024, 5:33:06 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add user</title>
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
        <div>
            <h3 style="color: red">${sessionScope.errorRegist2}</h3>
            <%
                request.getSession().removeAttribute("errorRegist2");
            %>
            <h1>Add new user:</h1>
            <form action="addUser">
                <p>Name: <input type="text" name="name" required=""></p>
                <p>Account: <input type="text" name="acc" required=""></p>
                <p>Password: <input type="text" name="pass" required=""></p>
                <p>Email: <input type="text" name="email" required=""></p>
                <p>Role: 
                    <input type="radio" name="role" value="1">Author
                    <input type="radio" name="role" value="0" checked="">User      
                </p>

                <input type="submit" value="Add">
            </form>
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
