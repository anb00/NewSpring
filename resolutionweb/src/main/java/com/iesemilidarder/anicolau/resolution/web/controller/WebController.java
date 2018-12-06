package com.iesemilidarder.anicolau.resolution.web.controller;

import com.iesemilidarder.anicolau.resolution.core.data.Product;
import com.iesemilidarder.anicolau.resolution.core.data.Restaurant;
import com.iesemilidarder.anicolau.resolution.web.bean.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.Size;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import static com.iesemilidarder.anicolau.resolution.core.DataHelper.countries;
import static javafx.scene.input.KeyCode.S;


@Controller
public class WebController {
    @RequestMapping("/")
    public String index(HttpSession session, Model model) {
        List<String> productTypes = Arrays.asList("Hoteles","Activities","Flights","Restaurants");
        List<String> data = Arrays.asList("yuhu0", "yuhu2", "yuhu3");

        //data.it
        //List<String> items = Arrays.
        model.addAttribute("datil",data);
        //model.addAllAttributes("it", ite);

        model.addAttribute("tony",productTypes);
        model.addAttribute("ip",session);
        session.getServletContext().getClass();
        session.getCreationTime();
        session.getClass();
        session.getAttributeNames();
        //Size.List<contries>
        return "indexy";
    }
    @RequestMapping("/macros")
    public String macroTest(HttpSession session, Model model) {
        return "macroTest";
    }


    @RequestMapping(value = "/web")
    public String index() {
        return "index";
    }


}
