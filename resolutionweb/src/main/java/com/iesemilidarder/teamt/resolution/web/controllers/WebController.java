package com.iesemilidarder.teamt.resolution.web.controllers;

import com.iesemilidarder.teamt.resolution.core.DataHelper;
import com.iesemilidarder.teamt.resolution.core.data.Product;
import com.iesemilidarder.teamt.resolution.core.data.Restaurant;
import com.iesemilidarder.teamt.resolution.web.marshalling.DataFileHelper;
import com.iesemilidarder.teamt.resolution.web.marshalling.DataWrapper;
import com.iesemilidarder.teamt.resolution.web.services.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


@Controller
public class WebController {

    @Autowired
    private RestaurantService variable;


    private Model initModel(Model model) {
        try {
            model.addAttribute("datil", DataHelper.getHotels());
            model.addAttribute("item", DataHelper.getItems());
            model.addAttribute("act", DataHelper.getActividades());
            model.addAttribute("rest", variable.getRestaurants());
        } catch (Exception e) {
            System.out.println("mek");
        }
        return model;
    }

    /**
     * TODO: Bienvenid@!
     *
     * @param model
     * @param name
     * @param description
     * @param imgUri
     * @param precio
     * @return
     */
    @RequestMapping("/add")
    public String addProduct(Model model,
                             @RequestParam String name,
                             @RequestParam String description,
                             @RequestParam String imgUri,
                             @RequestParam Double precio
    ) {
        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setImgUri(imgUri);
        product.setPrecio(precio);
        DataHelper.addItem(product);

        initModel(model);
        return "hoteles"; //Conseguir que devuelva a la página de index o a una del producto agregado!
    }



    @RequestMapping("/hoteles")
    public String addProduct(HttpSession session, Model model)
    {
        model.addAttribute("datil",DataHelper.getHotels());
        model.addAttribute("item",DataHelper.getItems());
        model.addAttribute("rest",DataHelper.getRestaurantes());
        model.addAttribute("act",DataHelper.getActividades());
        return "hoteles";
    }


    /* DELETE PRODUCT     @DeleteMapping("/delproducts")
    public String deleteProduct2(@PathVariable String uuid,Model model) {
        model.addAttribute("uu",DataHelper.getItemById(UUID.fromString(uuid)));
        return "hoteles";
    }
    */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public String deleteProduct(@PathVariable("id") String uuid, Model model) {
        UUID id = UUID.fromString(uuid);
        Product product = DataHelper.getItemById(id);
        //.orElseThrow(() -> new IllegalArgumentException("Invalid user Id:" + id));
        DataHelper.deleteProduct(product);
        //model.addAttribute("aa", DataHelper.getHotels());
        return "hoteles";
    }

    /*@DeleteMapping("/delproducts2")
    public String deleteProductX(@PathVariable String uuid,Model model) {
        model.addAttribute("uu",DataHelper.deleteproduct(UUID.fromString(uuid)));
        return "hoteles";
    }*/

    @RequestMapping("/find")
    public String getItemById(@RequestParam String uuid, Model model) {
        //TODO Revisar:  DataHelper.getItemById(id).deleteById(id);

        //model.addAttribute("id", DataHelper.getItemById(UUID.fromString(uuid)));
        model.addAttribute("uu", DataHelper.getItemById(UUID.fromString(uuid)));
        //model.addAttribute("idem", DataHelper.getItemById(UUID.fromString(uuid)));

        initModel(model);
        return "hoteles";
    }

    /* GET ALL RESTAURANTS */
    @RequestMapping("/restaurants")
    public String rests(HttpSession session, Model model) {
        model.addAttribute("rest", DataHelper.getRestaurantes());
        return "restaurants";
    }

    /*GET THE HOTELS */

    @RequestMapping("/getAllhotels")
    public String hotels(HttpSession session, Model model) {
        model.addAttribute("hotels", DataHelper.getItems());
        return "hotels";
    }

    @RequestMapping("/activities")
    public String activities(HttpSession session, Model model) {
        model.addAttribute("activities", DataHelper.getActividades());
        return "activities";
    }
    //Conseguir que devuelva a la página de index o a una del producto agregado!


}
