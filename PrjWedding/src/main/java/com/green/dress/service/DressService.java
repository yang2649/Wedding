package com.green.dress.service;

import java.util.HashMap;
import java.util.List;

import com.green.p.vo.PVo;


public interface DressService {

	

	List<PVo> getDressList(HashMap<String, Object> map);

}
