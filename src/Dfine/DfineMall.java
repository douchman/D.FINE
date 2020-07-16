package Dfine;

public class DfineMall {

    // 개설자 
    private String usrid;

    // 브랜드명 
    private String brandname;

    // 브랜드주소 
    private String brandaddress;

    // 수취계좌 
    private String selleraccount;

    // 적용된 템플릿 
    private String templetename;

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

    public String getBrandaddress() {
        return brandaddress;
    }

    public void setBrandaddress(String brandaddress) {
        this.brandaddress = brandaddress;
    }

    public String getSelleraccount() {
        return selleraccount;
    }

    public void setSelleraccount(String selleraccount) {
        this.selleraccount = selleraccount;
    }

    public String getTempletename() {
        return templetename;
    }

    public void setTempletename(String templetename) {
        this.templetename = templetename;
    }

    // Dfinemall 모델 복사
    public void CopyData(DfineMall param)
    {
        this.usrid = param.getUsrid();
        this.brandname = param.getBrandname();
        this.brandaddress = param.getBrandaddress();
        this.selleraccount = param.getSelleraccount();
        this.templetename = param.getTempletename();
    }
}