package com.iesemilidarder.teamt.resolution.web.services;

import com.iesemilidarder.teamt.resolution.core.DataHelper;
import com.iesemilidarder.teamt.resolution.core.data.Restaurant;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RestaurantService {

    public List<Restaurant> getRestaurants() {
        return DataHelper.getRestaurantes();
    }


}
