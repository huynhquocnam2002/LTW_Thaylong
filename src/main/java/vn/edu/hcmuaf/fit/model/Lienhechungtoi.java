package vn.edu.hcmuaf.fit.model;

public class Lienhechungtoi {
    String Sdt;
    String note;
    String address;

    public Lienhechungtoi(String sdt, String note, String address) {
        this.Sdt = sdt;
        this.note = note;
        this.address = address;
    }

    public String getSdt() {
        return Sdt;
    }

    public void setSdt(String sdt) {
        Sdt = sdt;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String toString() {
        return  this.Sdt + this.note + this.address;
    }
}
