package com.green.p.dao;

import java.util.HashMap;
import java.util.List;

import com.green.p.vo.PVo;

public interface PDao {



	void insertGGim(HashMap<String, Object> map);

	PVo getPList(HashMap<String, Object> map);

	

}
