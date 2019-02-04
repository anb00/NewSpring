package com.iesemilidarder.teamt.resolution.web.services;


import com.iesemilidarder.teamt.resolution.core.data.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

@Service
public interface ProductService {
    Iterable<Product> listAllProducts();

    Product getProductById(Integer id);

    Product findById(String id);

    Product index(String gohome); //Arreglar que retorne a index, detalles del producto y borrar produto o modificar!

    Product saveProduct(Product product);

    Product deleteProduct(Product product);

    //Product deleteProduct2(Product product);

    //Product deleteProductX(Integer id);
    //Todo review: void delete(T entity);


}

