package com.green.dress.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.dress.dao.DressDao;
import com.green.p.vo.PVo;

@Repository("dressDao")
public class DressDaoImpl implements DressDao {

	@Autowired
	private SqlSession  sqlSession;


	@Override
	public List<PVo> getDressList(HashMap<String, Object> map) {
		
		List<PVo>    dserList  =  sqlSession.selectList("P.DressList", map); 
		System.out.println("Dao"+map);
		return  dserList;
	}

	
	

	

}
