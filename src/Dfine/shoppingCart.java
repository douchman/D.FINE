package Dfine;

public class shoppingCart {

    // ȸ�����̵� 
    private String usrid;
    // �귣��� 
    private String brandname;
    // ��ǰ �� 
    private String productname;
    // ���� 
    private Integer quantity;
    // ���� 
    private Integer productprice;
    // ���� 
    private String productphoto;

    public String getUsrid() {
        return usrid;
    }

    public void setUsrid(String usrid) {
        this.usrid = usrid;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getProductprice() {
        return productprice;
    }

    public void setProductprice(Integer productprice) {
        this.productprice = productprice;
    }

    public String getProductphoto() {
        return productphoto;
    }

    public void setProductphoto(String productphoto) {
        this.productphoto = productphoto;
    }

    // Dfineshopcart �� ����
    public void CopyData(shoppingCart param)
    {
        this.usrid = param.getUsrid();
        this.brandname = param.getBrandname();
        this.productname = param.getProductname();
        this.quantity = param.getQuantity();
        this.productprice = param.getProductprice();
        this.productphoto = param.getProductphoto();
    }
}