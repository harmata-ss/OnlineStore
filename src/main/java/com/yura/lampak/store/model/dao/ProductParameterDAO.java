package com.yura.lampak.store.model.dao;


import com.yura.lampak.store.model.entities.ProductParameter;

public interface ProductParameterDAO {

    ProductParameter getParamByProductAndAttrIds(int product_id, int attr_id);

//    for admin
    boolean saveParameter(ProductParameter productParam, boolean isUpdate);
    boolean removeParameterByProductId(int product_id);
}
