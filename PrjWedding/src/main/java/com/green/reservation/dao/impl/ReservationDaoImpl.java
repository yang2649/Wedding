package com.green.reservation.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.reservation.dao.ReservationDao;
import com.green.reservation.vo.ReservationVo;

@Repository("reservationDao")
public class ReservationDaoImpl implements ReservationDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ReservationVo> PacakgeList(HashMap<String, Object> map) {
		List<ReservationVo> vo = sqlSession.selectList("Reservation.GetPackageList", map);
		return null;
	}

}
