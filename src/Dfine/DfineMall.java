package Dfine;

public class DfineMall {

    // ������ 
    private String usrid;

    // �귣��� 
    private String brandname;

    // �귣���ּ� 
    private String brandaddress;

    // ������� 
    private String selleraccount;

    // ����� ���ø� 
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

    // Dfinemall �� ����
    public void CopyData(DfineMall param)
    {
        this.usrid = param.getUsrid();
        this.brandname = param.getBrandname();
        this.brandaddress = param.getBrandaddress();
        this.selleraccount = param.getSelleraccount();
        this.templetename = param.getTempletename();
    }
}