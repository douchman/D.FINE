package Dfine;

//��ǰ  ���̺� 
public class Dfineproduct {

 // ��ǰ �ڵ� 
 private String productid;

 // �귣��� 
 private String brandname;

 // ��ǰ �� 
 private String productname;

 // �󼼼��� 
 private String productdetail;

 // ���� 
 private Integer productprice;

 // ��� 
 private Integer productstock;

 // ���� 
 private String productcolor;

 // ������ 
 private String productsize;

 // ������ 
 private String snapshot;

 public String getProductid() {
     return productid;
 }

 public void setProductid(String productid) {
     this.productid = productid;
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

 public String getProductdetail() {
     return productdetail;
 }

 public void setProductdetail(String productdetail) {
     this.productdetail = productdetail;
 }

 public Integer getProductprice() {
     return productprice;
 }

 public void setProductprice(Integer productprice) {
     this.productprice = productprice;
 }

 public Integer getProductstock() {
     return productstock;
 }

 public void setProductstock(Integer productstock) {
     this.productstock = productstock;
 }

 public String getProductcolor() {
     return productcolor;
 }

 public void setProductcolor(String productcolor) {
     this.productcolor = productcolor;
 }

 public String getProductsize() {
     return productsize;
 }

 public void setProductsize(String productsize) {
     this.productsize = productsize;
 }

 public String getSnapshot() {
     return snapshot;
 }

 public void setSnapshot(String snapshot) {
     this.snapshot = snapshot;
 }

 // Dfineproduct �� ����
 public void CopyData(Dfineproduct param)
 {
     this.productid = param.getProductid();
     this.brandname = param.getBrandname();
     this.productname = param.getProductname();
     this.productdetail = param.getProductdetail();
     this.productprice = param.getProductprice();
     this.productstock = param.getProductstock();
     this.productcolor = param.getProductcolor();
     this.productsize = param.getProductsize();
     this.snapshot = param.getSnapshot();
 }
}