package pl.mkubala.tajpej.collections;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;

public aspect EmptyCollectionOverNullValueAspect {

    List<?> around() : execution(List+ *.*(..)) {
        List<?> list = proceed();
        if (list == null) {
            list = Lists.newArrayList();
        }
        return list;
    }
    
    Set<?> around() : execution(Set+ *.*(..)) {
        Set<?> set = proceed();
        if (set == null) {
            set = Sets.newHashSet();
        }
        return set;
    }
    
    Map<?,?> around() : execution(Map+ *.*(..)) {
        Map<?,?> map = proceed();
        if (map == null) {
            map = Maps.newHashMap();
        }
        return map;
    }
    
}
