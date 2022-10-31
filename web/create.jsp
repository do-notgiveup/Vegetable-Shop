<%@page import="sample.user.UserDTO"%>
<%@page import="sample.product.ProductError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create product Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleID().equals("AD")) {
                response.sendRedirect("login.jsp");
                return;
            }
            String search = request.getParameter("search");
            if (search == null) {
                search = "";
            }
        %>
        <h1>Create new product</h1>
        <%
            ProductError productError = (ProductError) request.getAttribute("PRODUCT_EROR");
            if (productError == null) {
                productError = new ProductError();
            }
        %>
        <form action="MainController" method="POST">
            Product ID<input type="text" name="productID" required=""/>
            ${requestScope.PRODUCT_ERROR.productIDError}</br>           
            Product Name<input type="text" name="productName" required=""/>
            ${requestScope.PRODUCT_ERROR.productNameError}</br>
            Price<input type="number" name="price" required=""/>
            ${requestScope.PRODUCT_ERROR.priceError}</br>
            Quantity<input type="number" name="quantity" required=""/>
            ${requestScope.PRODUCT_ERROR.quantityError}</br>
            Image<input type="text" name="image" required=""/></br> 
            Category ID<select name="categoryID">
                <option value="ra">ra</option>
                <option value="rs">qu</option>
                <option value="a">gv</option>
                <option value="b">ha</option>
            </select><br>
            Import Date<input type="date" name="importDate" required=""/></br>
            Using Date<input type="date" name="usingDate" required=""/></br>
            <input type="submit" name="action" value="Create"/></br>
            <input type="reset" value="Reset"/></br>
            <a href="MainController?action=Search&search=">back</a>
        </form>
    </body>
</html>
