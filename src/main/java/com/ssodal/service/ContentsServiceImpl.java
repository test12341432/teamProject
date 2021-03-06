package com.ssodal.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;
import com.ssodal.dao.ContentsDAO;

@Service
public class ContentsServiceImpl implements ContentsService {

	@Autowired
	private ContentsDAO contDAO;

	@Override
	public ContentsBean showInfo(int i) {
		return this.contDAO.showI(i);
	}

	@Override
	public List<SeatBean> selectSeat(int content_code) {
		return this.contDAO.selSeat(content_code);
	}

	@Override
	public int remain(int content_code) {
		return this.contDAO.remain(content_code);
	}


}
