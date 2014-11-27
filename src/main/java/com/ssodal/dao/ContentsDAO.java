package com.ssodal.dao;



import java.util.List;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;

public interface ContentsDAO {

	ContentsBean showI(int i);

	List<SeatBean> selSeat(int content_code);//선택 좌석 확인

	int remain(int content_code);




}
