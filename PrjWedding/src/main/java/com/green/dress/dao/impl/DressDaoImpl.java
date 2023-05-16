package com.green.dress.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.dress.dao.DressDao;
import com.green.dress.vo.DressVo;

@Repository("DressDao")
public class DressDaoImpl implements DressDao {


	@Autowired
	private SqlSession  sqlSession;


	@Override
	public void insertfav(HashMap<String, Object> map) {
		System.out.println("sadsadsa"+map);
          sqlSession.insert("Dress.favInsert",map);		
	}

	@Override
	public List<DressVo> getPList(HashMap<String, Object> map) {
		List<DressVo>    dressList  =   sqlSession.selectList("Dress.favList",map); 
		
		return  dressList;
	}

	@Override
	public void deletefav(DressVo vo) {
         sqlSession.delete("Dress.favDelete",vo);		
	}

	@Override
	public List<DressVo> getDressList(HashMap<String, Object> map) {
		
		List<DressVo>    dressList  =  sqlSession.selectList("Dress.DressList", map); 
		System.out.println("Dao"+map);
		return  dressList;
	}

	

	

}
