package com.green.reservation.service;

import java.util.HashMap;
import java.util.List;

import com.green.reservation.vo.ReservationVo;

public interface ReservationService {

	List<ReservationVo> PackageList(HashMap<String, Object> map);

}
