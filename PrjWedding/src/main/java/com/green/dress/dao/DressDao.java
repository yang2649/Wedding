package com.green.dress.dao;

import java.util.HashMap;
import java.util.List;

import com.green.p.vo.PVo;

public interface DressDao {


	List<PVo> getDressList(HashMap<String, Object> map);

}
