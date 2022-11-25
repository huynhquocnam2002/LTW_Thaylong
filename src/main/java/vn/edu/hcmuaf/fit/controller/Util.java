package vn.edu.hcmuaf.fit.controller;

import java.util.Random;

public class Util {
    public static String getRandomId(){
        String id="";
        char[] arr= new char[62];
        for (int i=0; i<62; i++){
            if (i<26){
                arr[i]= (char) ('a'+i);
            } else if (i<52){
                arr[i]= (char) ('A'+i-26);
            } else {
                arr[i]= (char) ('0'+i-52);
            }
        }
        Random rd= new Random();
        for (int i=0;i<8;i++){
            id+=arr[rd.nextInt(62)];
        }
        return id;
    }

    public static void main(String[] args) {
        System.out.println(getRandomId());
    }
}
