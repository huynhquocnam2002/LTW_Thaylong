package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.controller.Util;

public class Announcement implements Comparable<Announcement> {
    private String id, orderID, name, img, content, time;
    private int status;//0: unread; 1: readed

    public Announcement(String id, String orderID, String name, String img, String content, String time, int status) {
        this.id = id;
        this.orderID = orderID;
        this.name = name;
        this.img = img;
        this.content = content;
        this.time = time;
        this.status = status;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Announcement{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", content='" + content + '\'' +
                ", time='" + time + '\'' +
                ", status=" + status +
                '}';
    }

    @Override
    public int compareTo(Announcement o) {
        return -this.time.compareTo(o.time);
    }

    public String getTimeString(){
        String res="";
        String[] arr=this.time.split(" ");
        res=arr[1]+" "+ Util.reverseDate(arr[0]);
        return res;
    }
}
