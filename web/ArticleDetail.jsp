<%-- 
    Document   : ArticleDetail
    Created on : Mar 15, 2024, 5:33:43 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail article</title>
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
        <c:set var="a" value="${requestScope.article}"/> 

        <div style="margin-left: 10px">
            <h3>Detail of the article:</h3>
            <form action="updateArticle" method="post">
                <p>ID:<input type="text" readonly value="${a.id}" name="id"></p>
                <p>Title: <textarea name="title" rows="2" cols="70">${a.title}</textarea></p>            
                <p>Content: <textarea name="content" rows="8" cols="70">${a.content}</textarea></p>
                <p>Image: <textarea name="image" rows="1" cols="70">${a.image}</textarea></p>
                <p>Post Date: <input type="date" value="${a.postDate}" name="postdate" readonly></p>
                <p>Writer ID: <input type="text" value="${a.user.id}" name="userid" readonly></p>
                <p>Category ID: 
                    <select name="cateid">
                        <c:forEach items="${requestScope.cates}" var="c">
                            <option ${(a.category.id==c.id)?'selected':''} value="${c.id}"> ${c.name}</option>
                        </c:forEach>
                    </select>
                </p>
                <br><input type="submit" value="Update">
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

