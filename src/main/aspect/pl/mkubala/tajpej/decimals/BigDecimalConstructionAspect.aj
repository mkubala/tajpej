package pl.mkubala.tajpej.decimals;

import java.math.BigDecimal;

public aspect BigDecimalConstructionAspect {

    declare warning : call(BigDecimal.new(double)) : "Prefer BigDecimal.valueOf(double) or BigDecimal(String) over BigDecimal(double).";
    
}
