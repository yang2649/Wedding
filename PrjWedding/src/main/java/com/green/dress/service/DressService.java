package com.green.dress.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.green.dress.vo.DressVo;


public interface DressService {

	


	List<DressVo> getDressList(HashMap<String, Object> map);
	void insertfav(HashMap<String, Object> map);

	List<DressVo> getPList(HashMap<String, Object> map);

	void deletefav(DressVo vo);






}
