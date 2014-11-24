package com.ssodal.action;

import java.util.List;

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
		m.addObject("m",cont);
		m.addObject("s", select);
		return m;
	}
	/*------------------------- seatSelect ---------------------*/
	/*------------------------- test ---------------------*/
	@RequestMapping("test")
	public ModelAndView test(){
		ModelAndView m = new ModelAndView("seat/test");
		return m;
	}

	/*------------------------- test ---------------------*/

	/*------------------------- Detail -------------------------*/
}
