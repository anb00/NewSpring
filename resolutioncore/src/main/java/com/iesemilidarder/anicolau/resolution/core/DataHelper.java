package com.iesemilidarder.anicolau.resolution.core;

import com.iesemilidarder.anicolau.resolution.core.data.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;




/*






 */





public class DataHelper {
    /* ################################## LIMITE DE ITEMS,PRODUCTS,ACTIVITYES ,ETC ################################*/
    public static Integer MAX_NUM = 50; //total 100 si son 50 actividades y 50 productos
    /* ############################################################################################################*/




    /* ############################################################################################################*/
    private static  List<Country> countries = new ArrayList<>();
   public static  List<Country> getCountries() {


           if (countries.isEmpty()) {
               //oh yeah,it works!!
               isemptycountry();
           }



        return countries;
    }
    /*public static void isemptycountry() {
        for (int i = 0; i < MAX_NUM; i++) {
            Country primercountry;
            //Product Item;
            primercountry = new Country() {
            };
            //Item = new Product() {
             //   @Override
             //   public void setName(String name) {
            //        super.setName(name);
           //     }
            //};
            primercountry.setLocation("UNKNOWNA");
            primercountry.setName("Country"+i);
            //alpha.setName("Actividad"+i);
            countries.add(primercountry);
            //products.add(alpha);
            System.out.print("Este es el País Nº -->"+countries.size());
            System.out.print("\n");
        }

    } */
    /* #######################HASTA AQUI COUNTRY###################################################################*/
    /* ############################################################################################################*/
    /* ########################LISTA DE PRODUCTOS###################################################################*/

    private static List<Product> products = new ArrayList<>();

    public static List<Product> getItems() {
        if (products.isEmpty()) {
           // doInit();
            isempty();
        }
        return products;
    }
    /* ###########################GET ITEMS BY ID####################################################################*/
    public static Product getItemById(UUID id) {
        try {
            for (Product aux : products) {
                if(aux.getId().equals(id)){
                    return aux;
                }
            }
        }catch (Exception e){
            System.out.println("MEK!!!" + e.toString());
        }
        return null;
    }
    /* ##################################ADD ITEMS##################################################################*/
    public static void addItem(Product aux) {
        try{
            if (aux!=null){
                products.add(aux);
                //Product alpha = getItemById(aux.getId());
                //if (alpha==null){
                  //  products.add(alpha);
                //}

            }
        }catch (Exception e){
            System.out.println("MEK!!!" + e.toString());
        }
    }
 /* ############################################## IS EMPTY [1] #####################################################*/
    public static void isempty() {
        for (int i = 0; i < MAX_NUM; i++) {
            Product alpha;
            Product Item;
            alpha = new Activity();
            Item = new Product() {
                @Override
                public void setName(String name) {
                    super.setName(name);
                }
            };
            Item.setImgUri("http://");
            Item.setName("Producto"+i);
            alpha.setName("Actividad"+i);
            products.add(Item);
            products.add(alpha);
            System.out.print("Este es el número -->"+products.size());
            System.out.print("\n");
        }

    }
    /* ############################################## IS EMPTY [2] #####################################################*/
    /* ############################################## COUNTRY #####################################################*/
    public static void isemptycountry() {
        if (MAX_NUM == 50 ){
            Country alpha;
            Country beta;
            Country gamma;
            gamma = new Country() {
                @Override
                public UUID getId() {
                    return super.getId();
                }

                @Override
                public String getName() {
                    return super.getName();
                }

                @Override
                public void setName(String name) {
                    super.setName(name);
                }
            };
            alpha = new Country() {
                @Override
                public UUID getId() {
                    return super.getId();
                }

                @Override
                public String getName() {
                    return super.getName();
                }
            };
            beta = new Country() {
                @Override
                public UUID getId() {
                    return super.getId();
                }

                @Override
                public String getName() {
                    return super.getName();
                }

                @Override
                public void setName(String name) {
                    super.setName(name);
                }
            };

            alpha.setName("Dubai");
            beta.setName("Madrid");
            gamma.setName("New York");
            alpha.getId();
            countries.addAll(countries);
            countries.size();


            countries.add(beta);
            countries.add(alpha);
            countries.add(gamma);
            countries.hashCode();
            System.out.print("Lista de paises"+"-->"+countries.size());
            System.out.print("\n");
        }else { }
    }




    /* private static void doInit() {

        for (int i = 0; i < MAX_NUM; i++) {
            final int resto = i % 3;
            /*if(resto == 0){
            }else if(resto==1){
            }else{
            }*/
           //* Product alpha;
          //*  switch (resto) {
             //*   case 0:
                //    alpha = new Event();
                  //  break;
                //case 1:
                  //  alpha = new Activity();
                  //  break;
                //default:
                  //  alpha = new Restaurant();
                   // break;
            //}
            //alpha.setName("Product " + resto);
            //products.add(alpha);
            //System.out.print("Tenemos en el array"+products.size());

        //}
    //} */
}
