package com.green.estimate.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.estimate.dao.EstimateDao;
import com.green.estimate.vo.EstimateVo;

@Repository("estimateDao")
public class EstimateDaoImpl implements EstimateDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertEsti(EstimateVo estivo) {
		
		sqlSession.insert("Estimate.EstimateInsert", estivo);
		
	}

}
