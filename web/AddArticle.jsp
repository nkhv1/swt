<%-- 
    Document   : AddArticle
    Created on : Mar 15, 2024, 5:31:14 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add article</title>
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
            <h3 style="color: red">${sessionScope.errorArticle}</h3>
            <%
                request.getSession().removeAttribute("errorArticle");
            %>
            <h1>Add new article:</h1>
            <form action="addArticle" method="post">
                <p>Title: <textarea name="title" rows="2" cols="70" required="">${requestScope.title}</textarea></p>            
                <p>Content: <textarea name="content" rows="8" cols="70"required="" >${requestScope.content}</textarea></p>
                <p>Image: <textarea name="image" rows="1" cols="70">${image}</textarea></p>
                <p>Post date: <input type="date" name="postDate" readonly="" value="${requestScope.date}"></p>
                <p>Writer ID: <input type="text" name="userID" value="${sessionScope.user.name}" readonly=""></p>

                <p>Category: 
                    <select name="cateID">
                        <c:forEach items="${requestScope.cates}" var="c">
                            <option value="${c.id}"> ${c.name}</option>
                        </c:forEach>
                    </select>
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
