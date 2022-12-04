package vn.edu.hcmuaf.fit.model;

import java.util.TreeMap;

public class Cart {
    private TreeMap<String , Integer> list ;
    private Long cartID;

    public Cart() {
        this.list = new TreeMap<>();
        this.cartID =  System.currentTimeMillis();
    }

    public TreeMap<String, Integer> getList() {
        return list;
    }

    public void setList(TreeMap<String, Integer> list) {
        this.list = list;
    }

    public Long getCartID() {
        return cartID;
    }

    public void setCartID(Long cartID) {
        this.cartID = cartID;
    }

    public void insertToCart(String sp){
        boolean bl = list.containsKey(sp);
        if(bl){
            int sl = 1;
            sl++;
            list.put(sp , sl);
        }else {
            list.put(sp , 1);
        }
    }
    public boolean checkEmpty(){
        return list.isEmpty();
    }
}
