package sample.product;

public class ProductError {

    private String productIDError;
    private String productNameError;
    private String priceError;
    private String quantityError;
    private String imageError;
    private String usingDateError;

    public ProductError() {
        this.productIDError = "";
        this.productNameError = "";
        this.priceError = "";
        this.quantityError = "";
        this.imageError = "";
        this.usingDateError = "";
    }

    public ProductError(String productIDError, String productNameError, String priceError, String quantityError, String imageError, String usingDateError) {
        this.productIDError = productIDError;
        this.productNameError = productNameError;
        this.priceError = priceError;
        this.quantityError = quantityError;
        this.imageError = imageError;
        this.usingDateError = usingDateError;
    }

    public String getProductIDError() {
        return productIDError;
    }

    public void setProductIDError(String productIDError) {
        this.productIDError = productIDError;
    }

    public String getProductNameError() {
        return productNameError;
    }

    public void setProductNameError(String productNameError) {
        this.productNameError = productNameError;
    }

    public String getPriceError() {
        return priceError;
    }

    public void setPriceError(String priceError) {
        this.priceError = priceError;
    }

    public String getQuantityError() {
        return quantityError;
    }

    public void setQuantityError(String quantityError) {
        this.quantityError = quantityError;
    }

    public String getImageError() {
        return imageError;
    }

    public void setImageError(String imageError) {
        this.imageError = imageError;
    }

    public String getUsingDateError() {
        return usingDateError;
    }

    public void setUsingDateError(String usingDateError) {
        this.usingDateError = usingDateError;
    }

}
