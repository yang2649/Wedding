package com.green.reservation.dao;

import java.util.HashMap;
import java.util.List;

import com.green.reservation.vo.ReservationVo;

public interface ReservationDao {

	List<ReservationVo> PacakgeList(HashMap<String, Object> map);

}
