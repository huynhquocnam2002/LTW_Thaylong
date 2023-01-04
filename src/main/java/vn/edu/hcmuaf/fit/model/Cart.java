package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.DAO.ProductDAO;

import java.sql.SQLException;
import java.util.TreeMap;

public class Cart {

    private TreeMap<String , Integer> list;

    public Cart() {
        this.list = new TreeMap<>();
    }

    public void  clearCart(){
        this.list.clear();
    }

    public TreeMap<String, Integer> getList() {
        return list;
    }

    public void setList(TreeMap<String, Integer> list) {
        this.list = list;
    }
    // insert vao cart
    public void insertToCart(String sp){
        boolean bl = list.containsKey(sp);
        if(bl){
            int sl = list.get(sp);
            sl++;
            list.put(sp , sl);
        }else {
            list.put(sp , 1);
        }
    }
    // xoa sp khoi cart
    public void deleteCart(String sp){
        boolean bl = list.containsKey(sp);
        if(bl) list.remove(sp);
    }
    // cap nhat so luong cua san pham
    public void subTocart(String sp){
        boolean bl = list.containsKey(sp);
        if(bl){
            int sl= list.get(sp);
             sl--;
             if(sl<=0){
                 list.remove(sp);
             }else {
                 list.remove(sp);
                 list.put(sp,sl);
             }
        }
    }
    // get tong tien cua sp nao do
    public double returnCost(String sp) throws SQLException, ClassNotFoundException {

        double sum=0;
        boolean bl = list.containsKey(sp);
        if(bl){
            sum = (double) list.get(sp)*ProductDAO.getProductById(sp).getPrice();
        }
        return  sum;
    }

    // get tong tien
    public double returnALlCost() throws SQLException, ClassNotFoundException {
        double sum=0;
        for (String msp : list.keySet()){
            sum += list.get(msp)*ProductDAO.getProductById(msp).getPrice();
        }
        return  sum;
    }

    public boolean checkEmpty(){
        return list.isEmpty();
    }
    public int getSize(){
        return list.size();
    }
}