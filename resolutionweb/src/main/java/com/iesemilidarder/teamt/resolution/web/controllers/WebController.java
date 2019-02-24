package com.iesemilidarder.teamt.resolution.web.controllers;

import com.iesemilidarder.teamt.resolution.core.AlreadyInDatabaseException;
import com.iesemilidarder.teamt.resolution.core.DataHelper;
import com.iesemilidarder.teamt.resolution.core.data.Activity;
import com.iesemilidarder.teamt.resolution.core.data.Hotel;
import com.iesemilidarder.teamt.resolution.core.data.Product;
import com.iesemilidarder.teamt.resolution.core.data.Restaurant;
import com.iesemilidarder.teamt.resolution.web.marshalling.DataFileHelper;
import com.iesemilidarder.teamt.resolution.web.marshalling.DataWrapper;
import com.iesemilidarder.teamt.resolution.web.services.ActividadesService;
import com.iesemilidarder.teamt.resolution.web.services.RestaurantService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.UUID;

/**
 * Auth anb 23.2.19
 */

@Controller
public class WebController<method> {

    private Logger log = LoggerFactory.getLogger(WebController.class);

   // @Autowired
   // private RestaurantService service;
    //private HotelService serviceH;
   // private ActividadesService serviceA;
    //private AllProducts;


    private Model initModel(Model model) {
        try {
            model.addAttribute("datil", DataHelper.getAll(Hotel.class));
//            model.addAttribute("item", DataHelper.getItems());
            model.addAttribute("act", DataHelper.getAll(Activity.class));
            model.addAttribute("rest", DataHelper.getAll(Restaurant.class));
//            model.addAttribute("aa", service.getRestaurants());
        } catch (Exception e) {
            System.out.println("Esto initModelController");
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
    public String create(Model model,
                             @RequestParam String name,
                             @RequestParam String description,
                             @RequestParam String imgUri,
                             @RequestParam Double precio
    ) throws AlreadyInDatabaseException {
    	Hotel hotel = new Hotel();
    	hotel.setDescription(description);
    	hotel.setImgUri(imgUri);
    	hotel.setPrecio(precio);
    	hotel.setName(name);
    	//DataHelper.create(hotel);
    	Activity act = new Activity();
    	act.setDescription("Carreras de karts");
    	act.setName("karts");
        DataHelper.create(hotel);
        //DataHelper.create(act);
    	//DataHelper.create(name);
    	
        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setImgUri(imgUri);
        product.setPrecio(precio);
        //DataHelper.create(product);

        initModel(model);
        return "hoteles"; //Conseguir que devuelva a la página de index o a una del producto agregado!
    }


    /**
     * Formulario para agregar Exclusivamente Restaurantes
     * @param model
     * @param name
     * @param description
     * @param imgUri
     * @param precio
     * @return
     */
    @RequestMapping("/addrest")
    public String addItemRest(Model model,
                              @RequestParam String name,
                              @RequestParam String description,
                              @RequestParam String imgUri,
                              @RequestParam Double precio
    ) throws AlreadyInDatabaseException {
        Restaurant restaurant = new Restaurant();
        restaurant.setName(name);
        restaurant.setDescription(description);
        restaurant.setImgUri(imgUri);
        restaurant.setPrecio(precio);
       DataHelper.create(restaurant);


        model.addAttribute("rest", DataHelper.getAll(Restaurant.class));

        return "restaurants"; //Conseguir que devuelva a la página de index o a una del producto agregado!
    }


    /**
     * Pagina Inicial de Hoteles
     * @param session
     * @param model
     * @return
     */



    @RequestMapping("/hoteles")
    public String addProduct(HttpSession session, Model model)
    {
        initModel(model);
        return "hoteles";
    }

  /*  @RequestMapping("/Allz")
    public String show(HttpSession session, Model model)
    {
        model.addAttribute("act", serviceA.getActividades());
        model.addAttribute("rest", service.getRestaurants());
        return "hoteles";
    }

*/

    /**
     * Controlador en Construcción a falta de Conversor String UUID y Viceversa
     * @param
     * @param model
     * @return
     */
    @RequestMapping(value = "/delete/{id}" , method = RequestMethod.DELETE)
    public String deleteProduct(@PathVariable("id") String uuid, Model model) {
    	
        UUID id = UUID.fromString(uuid);
        Hotel hotel = DataHelper.retrieve(Hotel.class, id);
        //.orElseThrow(() -> new IllegalArgumentException("Invalid user Id:" + id));
       // DataHelper.delete(hotel);
        //model.addAttribute("aa", DataHelper.getHotels());
        initModel(model);
        return "hoteles";
    }

    /**
     * Controlador y Buscador Base Para Hoteles
     * @param uuid
     * @param model
     * @return
     */

    @RequestMapping("/find")
    public String getItemById(@RequestParam String uuid, Model model) {
        //TODO Revisar:  DataHelper.getItemById(id).deleteById(id);

        //model.addAttribute("id", DataHelper.getItemById(UUID.fromString(uuid)));
        model.addAttribute("uu", DataHelper.retrieve(UUID.fromString(uuid)));
        //model.addAttribute("idem", DataHelper.getItemById(UUID.fromString(uuid)));

        initModel(model);
        return "hoteles";
    }

    /**
     * Controlador y Buscador para Restaurantes Exclusivamente por UUID
     * @param uuid
     * @param model
     * @return
     */

    /* Buscador de Restaurantes por ID */


    @RequestMapping("/findRest")
    public String getItemByIdRest(@RequestParam String uuid, Model model) {
        //TODO Revisar:  DataHelper.getItemById(id).deleteById(id);
        model.addAttribute("cc", DataHelper.retrieve(UUID.fromString(uuid)));
        model.addAttribute("rest", DataHelper.getAll(Restaurant.class));
      //  model.addAttribute("uu", service.getClass());
        return "restaurants";
    }




    /* GET ALL RESTAURANTS */
    @RequestMapping("/restaurants")
    public String rests(HttpSession session, Model model) {
        model.addAttribute("rest",DataHelper.getAll(Restaurant.class));
        model.addAttribute("uu", DataHelper.getAll(Restaurant.class));
        initModel(model);
        return "restaurants";
    }


}
