package com.green.p.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.p.dao.PDao;
import com.green.p.vo.PVo;

@Repository("pDao")
public class PDaoImpl implements PDao {


	@Autowired
	private SqlSession  sqlSession;


	@Override
	public void insertGGim(HashMap<String, Object> map) {
		System.out.println("sadsadsa"+map);
          sqlSession.insert("P.ggimInsert",map);		
	}

	@Override
	public PVo getPList(HashMap<String, Object> map) {
		PVo    dressList  =  (PVo) sqlSession.selectList("P.PList",map); 
		
		return  dressList;
	}


	

	

}
