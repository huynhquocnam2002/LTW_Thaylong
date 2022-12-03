package vn.edu.hcmuaf.fit.model;

import java.util.Date;
import java.util.Objects;

public class User {
    private String id,img,name, phone,email,pass,gender;
    private Date birthday,accountDate;
    private int status;//-1:locked; 0:non-active    ; 1:actived
    //
    public User(String id, String img, String name, String phone, String email, String pass, String gender, Date birthday, Date accountDate, int status) {
        this.id = id;
        this.img = img;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.pass = pass;
        this.gender = gender;
        this.birthday = birthday;
        this.accountDate = accountDate;
        this.status = status;
    }

    public User(){

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public String getBirthdayString() {
        if (birthday==null) return "";
        String[] st=birthday.toString().split("-");
        String rs="";
        for (int i=st.length-1; i>=0; i--){
            rs+=st[i]+"/";
        }
        return rs.substring(0,rs.length()-1);
    }


    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getAccountDate() {
        return accountDate;
    }

    public void setAccountDate(Date accountDate) {
        this.accountDate = accountDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public boolean isPassword(String o){
        return this.pass.equals(o);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        return getStatus() == user.getStatus() && Objects.equals(getId(), user.getId()) && Objects.equals(getImg(), user.getImg()) && Objects.equals(getName(), user.getName()) && Objects.equals(getPhone(), user.getPhone()) && Objects.equals(getEmail(), user.getEmail()) && Objects.equals(pass, user.pass) && Objects.equals(getGender(), user.getGender()) && Objects.equals(getBirthday(), user.getBirthday()) && Objects.equals(getAccountDate(), user.getAccountDate());
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", img='" + img + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                ", gender='" + gender + '\'' +
                ", birthday=" + birthday +
                ", accountDate=" + accountDate +
                ", status=" + status +
                '}';
    }
}
