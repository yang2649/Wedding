package com.green.p.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.green.p.vo.PVo;


public interface PService {

	



	void insertGGim(HashMap<String, Object> map);

	List<PVo> getPList(HashMap<String, Object> map);

	void deleteggim(PVo vo);






}
