package sample.product;

public class ProductDTO {

    private String productID;
    private String productName;
    private int price;
    private double quantity;
    private String image;
    private String categoryID;
    private String importDate;
    private String usingDate;

    public ProductDTO() {
        this.productID = "";
        this.productName = "";
        this.price = 0;
        this.quantity = 0;
        this.image = "";
        this.categoryID = "";
        this.importDate = "";
        this.usingDate = "";
    }

    public ProductDTO(String productID, String productName, int price, double quantity, String image, String categoryID, String importDate, String usingDate) {
        this.productID = productID;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.categoryID = categoryID;
        this.importDate = importDate;
        this.usingDate = usingDate;
    }

//    public ProductDTO(String productID, String productName, int price, int quantity, String image, String importDate, String usingDate) {
//        this.productID = productID;
//        this.productName = productName;
//        this.price = price;
//        this.image = image;
//    }
    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getImportDate() {
        return importDate;
    }

    public void setImportDate(String importDate) {
        this.importDate = importDate;
    }

    public String getUsingDate() {
        return usingDate;
    }

    public void setUsingDate(String usingDate) {
        this.usingDate = usingDate;
    }

}
