package com.iesemilidarder.teamt.resolution.web.controllers;//package com.iesemilidarder.anicolau.resolution.web.controller;

import com.iesemilidarder.teamt.resolution.core.DataHelper;
import com.iesemilidarder.teamt.resolution.core.data.Activity;
import com.iesemilidarder.teamt.resolution.core.data.Product;
import com.iesemilidarder.teamt.resolution.core.data.Restaurant;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/rest")
public class RestApiController {

    @RequestMapping("/find")
    public Product findById(@RequestParam String uuid, Session session, Model model) {
        UUID id = UUID.fromString(uuid); // we use this twice.
        Product product = DataHelper.getItemById(id);
        //Restaurant restaurantes = DataHelper.getItemById(id); // <<< Esto está mal, getItemById devuelve Product, no Restaurant
        model.addAttribute("fi",DataHelper.getHotels());
        model.addAttribute("fi",DataHelper.getRestaurantes());
        model.addAttribute("fi",DataHelper.getActividades());
        if (product == null) {
            return new Restaurant();
            //return new Activity();
        }
        return product;
    }

    @RequestMapping("/getAllhotels")
    public List<Product> getAllhotels(Session session) {
        return DataHelper.getItems();
    }


    @RequestMapping("/getAllrests")
    public List<Restaurant> getAllrests( Session session) {
        return DataHelper.getRestaurantes();
    }

    @RequestMapping("/getAllact")
    public List<Activity> getAllacts(Session session) {
        return DataHelper.getActividades();
    }


    /* UPDATE OR EDIT THE PRODUCT */
    @RequestMapping("/update")
    public Product findndUpdate(@RequestParam String uuid, Session session, Model model) {
        Product product = DataHelper.getAndUpdate(UUID.fromString(uuid));
        return product;
    }

}
