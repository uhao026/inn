package com.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Inn;
import com.service.InnService;
import com.util.Time;

@Controller
public class InnAction {
	@Autowired
	private InnService innService;
	Inn i=null;
	
	@RequestMapping(value="/editInn")
	public ModelAndView first(@ModelAttribute Inn inn,HttpServletRequest request){
		ModelAndView view =new ModelAndView();
		i = innService.myInn(inn);
		if(i!=null){
			request.getSession().setAttribute("sessionInn",i);
			view.setViewName("before/registerInn");
		}
		return view;			
	}
	/*注册客栈信息*/
	@RequestMapping(value="/hostRegister",method=RequestMethod.POST)
	public ModelAndView hostRegister(@ModelAttribute Inn inn){
		ModelAndView view = new ModelAndView();
		inn.setRegisterTime(Time.getCurrentTime());
		innService.hostRegister(inn);
		view.setViewName("../../index");
		return view;
	}
	
	/*编辑客栈信息*/
	@RequestMapping(value="/registerInn",method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute Inn inn){
		ModelAndView view = new ModelAndView();	
		innService.registerInn(inn);
		view.setViewName("../../index");		
		return view;
	}
}
