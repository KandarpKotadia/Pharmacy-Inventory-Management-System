package com.CritCulture.Model;

public class Med {
     int id;
     String name;
     String company;
     String type;
     int price;
     public Med(int id, String name, String company, String type, int price){
          super();
          this.id = id;
          this.name = name;
          this.company = company;
          this.type = type;
          this.price = price;
     }

     public int getId() {
          return id;
     }

     public void setId(int id) {
          this.id = id;
     }

     public String getName() {
          return name;
     }

     public void setName(String name) {
          this.name = name;
     }

     public String getCompany() {
          return company;
     }

     public void setCompany(String company) {
          this.company = company;
     }

     public String getType() {
          return type;
     }

     public void setType(String type) {
          this.type = type;
     }

     public int getPrice() {
          return price;
     }

     public void setPrice(int price) {
          this.price = price;
     }
}
