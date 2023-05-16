package com.green.p.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.green.p.vo.PVo;

public interface PDao {



	void insertGGim(HashMap<String, Object> map);

	List<PVo> getPList(HashMap<String, Object> map);

	void deleteGGim(PVo vo);


}
