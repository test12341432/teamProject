package com.ssodal.service;




import java.util.List;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;

public interface ContentsService {

	ContentsBean showInfo(int i);//제목+내용보기

	List<SeatBean> selectSeat(int content_code);

	int remain(int content_code);






}
