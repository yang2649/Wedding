package com.green.p.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<PVo> getPList(HashMap<String, Object> map) {
		List<PVo>    dressList  =   sqlSession.selectList("P.ggimList",map); 
		
		return  dressList;
	}

	@Override
	public void deleteGGim(PVo vo) {
         sqlSession.delete("P.ggimDelete",vo);		
	}

	

	

}
