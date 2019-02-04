package com.iesemilidarder.teamt.resolution.web.controllers;

import com.iesemilidarder.teamt.resolution.core.DataHelper;
import com.iesemilidarder.teamt.resolution.web.data.Restaurant;
import com.iesemilidarder.teamt.resolution.web.marshalling.DataFileHelper;
import com.iesemilidarder.teamt.resolution.web.marshalling.DataWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class XMLController {
    @RequestMapping("/XML")
    public String index(Model model) {

        List<Restaurant> data = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
        Restaurant aux = new Restaurant();
        aux.setName("Restaurant" + i);
        data.add(aux);
        }

        //collection in a service
        DataWrapper aux = new DataWrapper();

        DataFileHelper helper = new DataFileHelper();
        helper.saveProjectToFile(helper.getProjectFilePath(), aux);

        DataWrapper aux2 = helper.loadProjectFromFile(helper.getProjectFilePath());

        model.addAttribute("act", DataHelper.getActividades());
        return "index"; //Tiene que ser algún archivo después de templates para que funcione
        }
}
