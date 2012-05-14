package pl.mkubala.tajpej.decimals;

import java.math.BigDecimal;

public aspect BigDecimalConstructionAspect {

    declare warning : call(BigDecimal.new(double)) : 
        "Avoid passing double as constructor argument. Use new BigDecimal(String) or BigDecimal.valueOf(double) for non-constant values.";
    
}
