<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.*" %>
<%@ page import="org.w3c.dom.UserDataHandler" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- font awesome -->
    <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"/>
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="style/cssheader.css"/>
    <link rel="stylesheet" href="style/admin.css"/>

    <title>Admin JC Shop</title>
</head>

<%User ad = UserDAO.getUserBySessionID((String) request.getSession().getAttribute("user"));%>

<body>
<jsp:include page="admin/header.jsp"/>

<section id="admin-content" class="section">
    <div class="container">
        <!--            left-menu-->
        <jsp:include page="admin/leftmenu.jsp"/>
        <!--            right-menu-->
        <div id="rightContainer">
            <jsp:include page="admin/product.jsp"/>
            <jsp:include page="admin/order.jsp"/>
            <jsp:include page="admin/category.jsp"/>
            <jsp:include page="admin/producer.jsp"/>
            <jsp:include page="admin/user.jsp"/>
            <jsp:include page="admin/voucher.jsp"/>
            <jsp:include page="admin/doanhso.jsp"/>
        </div>
    </div>
</section>

<!--    --------------------JS-------------------------------->
<script>
    let abc=1;
    console.log("Thuan hello")
</script>
<script src="js/admin.js"></script>
</body>
</html>
