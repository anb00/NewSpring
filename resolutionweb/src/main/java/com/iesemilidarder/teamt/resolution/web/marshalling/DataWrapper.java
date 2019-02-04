package com.iesemilidarder.teamt.resolution.web.marshalling;

import com.iesemilidarder.teamt.resolution.web.data.Restaurant;


import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;


@XmlRootElement(name = "myProject") //namespace = "http://www.w3.org/2005/Atom",
@XmlAccessorType(XmlAccessType.FIELD)
public class DataWrapper {


    @XmlElementWrapper(name = "restaurants")
    @XmlElement(name = "restaurant")
    private List<Restaurant> restaurants = new ArrayList<>();

    public List<Restaurant> getRestaurants() {
        return restaurants;
    }

    public void setRestaurants(List<Restaurant> restaurants) {
        this.restaurants = restaurants;
    }
}
