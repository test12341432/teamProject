package com.ssodal.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;
import com.ssodal.service.ContentsService;

@Controller
public class ContentsAction {

	@Autowired
	private ContentsService contService;
	/*------------------------- Detail -------------------------*/
	/*------------------------- seatSelect ---------------------*/
	@RequestMapping("seatselect")
	public ModelAndView seat_select(){
		int content_code=2;
		ContentsBean cont=this.contService.showInfo(content_code);
		List<SeatBean> select = this.contService.selectSeat(content_code);
		ModelAndView m = new ModelAndView("seat/seatselect");
		int seat_total = cont.getContent_maxline()*cont.getContent_maxrow();//총좌석
		int remain_seat = seat_total - this.contService.remain(content_code);
		m.addObject("remain",remain_seat);
		m.addObject("total",seat_total);
		m.addObject("m",cont);
		m.addObject("s", select);
		return m;
	}
	/*------------------------- seatSelect ---------------------*/
	/*--------------------------select_ok ---------------------*/
	@RequestMapping("select_result")
	public ModelAndView select_result(HttpServletRequest request) throws Exception {
		
		@SuppressWarnings("unused")
		String[] seatValues = request.getParameterValues("all_data[]");
		System.out.println("여기로 넘어옴");		
		ModelAndView m = new ModelAndView("seat/select_result");
		return m;
	}
	/*--------------------------select_ok ---------------------*/
	/*------------------------- test ---------------------*/
	@RequestMapping("test")
	public ModelAndView test(){
		ModelAndView m = new ModelAndView("seat/test");
		return m;
	}

	/*------------------------- test ---------------------*/

	/*------------------------- Detail -------------------------*/
}
