package com.green.reservation.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.reservation.dao.ReservationDao;
import com.green.reservation.service.ReservationService;
import com.green.reservation.vo.ReservationVo;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Override
	public List<ReservationVo> PackageList(HashMap<String, Object> map) {
		System.out.println("서비스임플리먼트" + map);
		List<ReservationVo> vo = reservationDao.PacakgeList(map);
		return vo;
	} 

}
