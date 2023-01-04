package vn.edu.hcmuaf.fit.model;

public class Chinhanh {
    String address;
    String name;
    int phonenumber;
    String timeopen;
    String timeout;

    public Chinhanh(String address, String name, int phonenumber, String timeopen, String timeout) {
        this.address = address;
        this.name = name;
        this.phonenumber = phonenumber;
        this.timeopen = timeopen;
        this.timeout = timeout;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(int phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getTimeopen() {
        return timeopen;
    }

    public void setTimeopen(String timeopen) {
        this.timeopen = timeopen;
    }

    public String getTimeout() {
        return timeout;
    }

    public void setTimeout(String timeout) {
        this.timeout = timeout;
    }

    @Override
    public String toString() {
        return "Chinhanh{" +
                "address='" + address + '\'' +
                ", name='" + name + '\'' +
                ", phonenumber=" + phonenumber +
                ", timeopen='" + timeopen + '\'' +
                ", timeout='" + timeout + '\'' +
                '}';
    }
}
