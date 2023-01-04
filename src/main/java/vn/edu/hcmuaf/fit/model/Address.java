package vn.edu.hcmuaf.fit.model;

public class Address {
    private String id;
    private String id_user;
    private String name_receiver;
    private String phone_number;
    private String address;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getName_receiver() {
        return name_receiver;
    }

    public void setName_receiver(String name_receiver) {
        this.name_receiver = name_receiver;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Address(String id_user, String name_receiver, String phone_number, String address) {
        this.id_user = id_user;
        this.name_receiver = name_receiver;
        this.phone_number = phone_number;
        this.address = address;
    }
}
