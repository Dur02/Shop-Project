package cn.wyu.service;

import java.util.List;
import cn.wyu.dao.TypeDao;
import cn.wyu.dao.TypeDaoImpl;
import cn.wyu.pojo.Type;

public class TypeServiceImpl implements TypeService {
    private TypeDao td = new TypeDaoImpl();
    @Override
    public List<Type> findAllTypes() {
        List<Type> typeList = td.findAllTypes();
        return typeList;
    }

}

