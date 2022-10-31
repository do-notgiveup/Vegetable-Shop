<%@page import="sample.product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Admin Page</title>
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
        <h1>Welcome: <%= loginUser.getFullName()%></h1>
        <form action="MainController">
            Search<input type="text" name="search" required="" value="<%= search%>"/>
            <input type="submit" name="action" value="Search"/>
        </form><br/>
        <a href="MainController?action=Search&search=">View all</a><br/>
        <%
            List<ProductDTO> listProduct = (List<ProductDTO>) request.getAttribute("LIST_PRODUCT");
            if (listProduct != null) {
                if (listProduct.size() > 0) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>price</th>
                    <th>quantity</th>
                    <th>image</th>
                    <th>Category ID</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (ProductDTO product : listProduct) {
                %>
            <form action="MainController" method="POST">
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <input type="hidden" name="productID" value="<%= product.getProductID()%>"/>
                        <%= product.getProductID()%>
                    </td>
                    <td>
                        <input type="hidden" name="productName" value="<%= product.getProductName()%>"/>
                        <%= product.getProductName()%>
                    </td>
                    <td>
                        <input type="number" name="price" value="<%= product.getPrice()%>" required=""/>
                    </td>
                    <td>
                        <input type="number" name="quantity" value="<%= product.getQuantity()%>" required=""/>
                    </td>
                    <td>
                        <image style="height: 70px; width: 70px" src="<%=product.getImage()%>"/>
                        <input type="hidden" name="image" value="<%= product.getImage()%>"/>
                    </td>
                    <td>
                        <input type="hidden" name="categoryID" value="<%= product.getCategoryID()%>"/>
                        <%=product.getCategoryID()%>
                    </td>
                        <input type="hidden" name="importDate" value="<%= product.getImportDate()%>"/>
                        <input type="hidden" name="usingDate" value="<%= product.getUsingDate()%>"/>
                    <td>
                        <a href="MainController?action=Delete&productID=<%= product.getProductID()%>&search=<%= search%> ">Delete</a>
                    </td>
                    <td>
                        <input type="submit" name="action" value="Update"/>
                        <input type="hidden" name="search" value="<%= search%>"/>
                    </td>
                </tr>
            </form>

            <%
                }
            %>
        </tbody>
    </table>

    <%
            }
        }
    %>
    <a href="create.jsp">Create</a>
    <form action="MainController">
        <input type="submit" name="action" value="Logout"/>
    </form>
</body>
</html>
