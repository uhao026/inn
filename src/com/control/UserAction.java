package com.control;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.User;
import com.service.UserService;
import com.util.Time;

@Controller
public class UserAction {
	@Autowired
	private UserService userService;
	/*	������ҳ��*/
	User u = null;
	@RequestMapping(value="/toIndex")
	public ModelAndView first(){
		ModelAndView view =new ModelAndView();
		view.setViewName("../../index");
		return view;			
	}
	/*�����Ϊ����ҳ��*/
	@RequestMapping(value="/toHost")
	public ModelAndView beforeHost()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("before/beforeHost");
		return view;
	}
	/*���뷿��ע��ҳ��*/
	@RequestMapping(value="/toHostRegister")
	public ModelAndView hostRegister()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("before/hostRegister");
		return view;
	}
	/*	����ע��ҳ��*/
	@RequestMapping(value="/toRegister")
	public ModelAndView toRegister(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/register");
		return view;			
	}	
	/*ע���û�*/
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user){
		ModelAndView view = new ModelAndView();
		user.setUserRegisterTime(Time.getCurrentTime());
		userService.register(user);
		view.setViewName("../../index");		
		return view;
	}
	/*	�����¼ҳ��*/
	@RequestMapping(value="/toLogin")
	public ModelAndView toLogin(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/login");
		return view;			
	}	
	/*�û���¼*/
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute User user,HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		u = userService.login(user);
		if(u!=null)
		{
			request.getSession().setAttribute("sessionUser",u);
			view.setViewName("../../index");
		
		}
		else
		{
			view.setViewName("before/login");
		}
		return view;
	}
	
	/*�����������ҳ��*/
	@RequestMapping(value="/toSelfCenter")
	public ModelAndView toSelfCenter()
	{
		ModelAndView view =new ModelAndView();
		view.setViewName("before/selfCenter");
		return view;
	}
	
	/*�鿴�ҵ�����*/
	@RequestMapping(value="/myInformation")
	public ModelAndView myInformation(HttpServletRequest request)
	{
		ModelAndView view = new ModelAndView();
		request.getSession().setAttribute("sessionUser",u);
		view.setViewName("before/editMyInformation");
		return view;
	}
	
	/*�޸��ҵ�����*/
	@RequestMapping(value="/modify")
	public ModelAndView modify(@ModelAttribute User user,HttpServletRequest request)
	{
		
		ModelAndView view = new ModelAndView();
		user.setUserRegisterTime(Time.getCurrentTime());
		userService.modify(user);
		/*User user1 = queryUserById(user.getUserId());*/
		request.getSession().setAttribute("sessionUser",user);
		view.setViewName("before/editMyInformation");
		return view;
	}
	/*�����ҵ���ҳ*/
	@RequestMapping(value="/myMainPage")
	public ModelAndView myMainPage(HttpServletRequest request)
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("before/myMainPage");
		return view;
	}
	
	/*	�����ջҳ��*/
	@RequestMapping(value="/toInn")
	public ModelAndView toInn(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/inn");
		return view;			
	}
	
	@RequestMapping(value="/toInnDetail")
	public ModelAndView toInnDetail(){
		ModelAndView view = new ModelAndView();
		view.setViewName("before/innDetail");
		return view;
	}
	
	
	/*������½���ҳ��*/
	
	@RequestMapping(value="/toStory")
	public ModelAndView toStory(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/story");
		return view;			
	}
   /*������½�������ҳ��*/
	@RequestMapping(value="/toHotStory")
	public ModelAndView toHotStory(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/hotStory");
		return view;			
	}
	  /*��������Ļ�ҳ��*/
		@RequestMapping(value="/toCulture")
		public ModelAndView toCulture(){
			ModelAndView view =new ModelAndView();
			view.setViewName("before/culture");
			return view;			
		}
		/*���������ҳ��*/
		@RequestMapping(value="/toTravel")
		public ModelAndView toTravel(){
			ModelAndView view =new ModelAndView();
			view.setViewName("before/travel");
			return view;			
		}
	
	
	/*�����̨ͷ��*/
	@RequestMapping(value="/toHead")
	public ModelAndView head(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/head");
		return view;			
	}
	/*�����̨ͷ��2*/
	@RequestMapping(value="/toHead2")
	public ModelAndView head2(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/head2");
		return view;			
	}
	/*�����̨���˵���*/
	@RequestMapping(value="/toLeft")
	public ModelAndView left(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/left");
		return view;			
	}
	/*�����̨��ҳ*/
	@RequestMapping(value="/toMain")
	public ModelAndView main(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/main");
		return view;			
	}
	/*�����̨�û�����*/
	@RequestMapping(value="/toTab")
	public ModelAndView tab(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/tab");
		return view;			
	}
	/*�����̨p3*/
	@RequestMapping(value="/toP3")
	public ModelAndView p3(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/p3");
		return view;			
	}
	/*�����̨p2*/
	@RequestMapping(value="/toP2")
	public ModelAndView p2(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/p2");
		return view;			
	}
	/*�����̨p1*/
	@RequestMapping(value="/toP1")
	public ModelAndView p1(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/p1");
		return view;			
	}
	/*�����̨�޸��û�����*/
	@RequestMapping(value="/toChangepwd")
	public ModelAndView changepwd(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/changepwd");
		return view;			
	}
	

}
