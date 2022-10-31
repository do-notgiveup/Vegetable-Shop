package sample.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

public class UserDAO {

    private static final String LOGIN = "SELECT fullName, roleID, addr, birthday, phone, email FROM tblUsers WHERE userID=? AND password=?";
//    private static final String CHECK_QUANTITY = "SELECT quantity FROM tblProduct WHERE productID = ?";
//    private static final String ADD_ORDER = "INSERT INTO tblOrder(orderID, orderDate, total, userID) VALUES(?, ?, ?, ?) ";
//    private static final String ADD_ORDERDETAIL = "INSERT INTO tblOrderDetail(detailID, price, quantity, orderID, productID) VALUES(?, ?, ?, ?, ?) ";
//    private static final String UPDATE_QUANTITY = "UPDATE tblProduct SET quantity = ?WHERE productID = ?";

//    public List<UserDTO> getListUser(String search) throws SQLException {
//        List<UserDTO> listUser = new ArrayList<>();
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        ResultSet rs = null;
//        try {
//            conn = DBUtils.getConnection();
//            if (conn != null) {
//                String sql = "SELECT userID, fullName, roleID,addreess,birthday,phone,email FROM tblUsers WHERE fullName like ?";
//                ptm = conn.prepareStatement(sql);
//                ptm.setString(1, "%" + search + "%");
//                rs = ptm.executeQuery();
//                while (rs.next()) {
//                    String userID = rs.getString("userID");
//                    String fullName = rs.getString("fullName");
//                    String password = "*";
//                    String roleID = rs.getString("roleID");
//                    String addreess = rs.getString("addreess");
//                    String birthday = rs.getString("birthday");
//                    String phone = rs.getString("phone");
//                    String email = rs.getString("email");
//                    listUser.add(new UserDTO(userID, fullName, password, roleID, addreess, birthday, phone, email));
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (rs != null) {
//                rs.close();
//            }
//            if (ptm != null) {
//                ptm.close();
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        }
//        return listUser;
//    }
    public UserDTO checkLogin(String userID, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userID);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String fullName = rs.getString("fullName");
                    String roleID = rs.getString("roleID");
                    String address = rs.getString("addr");
                    String birthday = rs.getString("birthday");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");
                    user = new UserDTO(userID, fullName, roleID, "", address, birthday, phone, email);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    }

//    public int checkQuantity(String productID) throws SQLException {
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        ResultSet rs = null;
//        int quantity = 0;
//        try {
//            conn = DBUtils.getConnection();
//            if(conn != null){
//                ptm = conn.prepareStatement(CHECK_QUANTITY);
//                ptm.setString(1, productID);
//                quantity = rs.getInt("quantity");
//            }
//        } catch (ClassNotFoundException | SQLException e) {
//        }finally {
//            if (rs != null) {
//                rs.close();
//            }
//            if (ptm != null) {
//                ptm.close();
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        }
//        return quantity;
//    }
//
//    public void addOrder(String orderID, String orderDate, int total, String userID) throws SQLException {
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        try {
//            conn = DBUtils.getConnection();
//            if(conn != null){
//                ptm = conn.prepareStatement(ADD_ORDER);
//                ptm.setString(1, orderID);
//                ptm.setString(2, orderDate);
//                ptm.setInt(3, total);
//                ptm.setString(4, userID);
//            }
//        } catch (Exception e) {
//        }finally{
//            if(ptm != null){
//                ptm.close();
//            }
//            if(conn != null){
//                conn.close();
//            }
//        }
//    }
//    
//    public void addOrderDetail(String detailID, int price, int quantity, String orderID, String productID) throws SQLException {
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        try {
//            conn = DBUtils.getConnection();
//            if(conn != null){
//                ptm = conn.prepareStatement(ADD_ORDERDETAIL);
//                ptm.setString(1, detailID);
//                ptm.setInt(2, price);
//                ptm.setInt(3, quantity);
//                ptm.setString(4, orderID);
//                ptm.setString(5, productID);
//            }
//        } catch (Exception e) {
//        }finally{
//            if(ptm != null){
//                ptm.close();
//            }
//            if(conn != null){
//                conn.close();
//            }
//        }
//    }
//
//    public void updateQuantity(String quantity, String productID) throws SQLException {
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        try {
//            conn = DBUtils.getConnection();
//            if(conn != null){
//                ptm = conn.prepareStatement(UPDATE_QUANTITY);
//                ptm.setString(1, quantity);
//                ptm.setString(2, productID);
//            }
//        } catch (Exception e) {
//        }finally{
//            if(ptm != null){
//                ptm.close();
//            }
//            if(conn != null){
//                conn.close();
//            }
//        }
//    }
//
}
