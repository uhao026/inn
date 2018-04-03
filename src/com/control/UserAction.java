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
	/*	进入首页面*/
	User u = null;
	@RequestMapping(value="/toIndex")
	public ModelAndView first(){
		ModelAndView view =new ModelAndView();
		view.setViewName("../../index");
		return view;			
	}
	/*进入成为房东页面*/
	@RequestMapping(value="/toHost")
	public ModelAndView beforeHost()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("before/beforeHost");
		return view;
	}
	/*进入房东注册页面*/
	@RequestMapping(value="/toHostRegister")
	public ModelAndView hostRegister()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("before/hostRegister");
		return view;
	}
	/*	进入注册页面*/
	@RequestMapping(value="/toRegister")
	public ModelAndView toRegister(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/register");
		return view;			
	}	
	/*注册用户*/
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user){
		ModelAndView view = new ModelAndView();
		user.setUserRegisterTime(Time.getCurrentTime());
		userService.register(user);
		view.setViewName("../../index");		
		return view;
	}
	/*	进入登录页面*/
	@RequestMapping(value="/toLogin")
	public ModelAndView toLogin(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/login");
		return view;			
	}	
	/*用户登录*/
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
	
	/*进入个人中心页面*/
	@RequestMapping(value="/toSelfCenter")
	public ModelAndView toSelfCenter()
	{
		ModelAndView view =new ModelAndView();
		view.setViewName("before/selfCenter");
		return view;
	}
	
	/*查看我的资料*/
	@RequestMapping(value="/myInformation")
	public ModelAndView myInformation(HttpServletRequest request)
	{
		ModelAndView view = new ModelAndView();
		request.getSession().setAttribute("sessionUser",u);
		view.setViewName("before/editMyInformation");
		return view;
	}
	
	/*修改我的资料*/
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
	/*进入我的主页*/
	@RequestMapping(value="/myMainPage")
	public ModelAndView myMainPage(HttpServletRequest request)
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("before/myMainPage");
		return view;
	}
	
	/*	进入客栈页面*/
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
	
	
	/*进入故事锦集页面*/
	
	@RequestMapping(value="/toStory")
	public ModelAndView toStory(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/story");
		return view;			
	}
   /*进入故事锦集详情页面*/
	@RequestMapping(value="/toHotStory")
	public ModelAndView toHotStory(){
		ModelAndView view =new ModelAndView();
		view.setViewName("before/hotStory");
		return view;			
	}
	  /*进入大理文化页面*/
		@RequestMapping(value="/toCulture")
		public ModelAndView toCulture(){
			ModelAndView view =new ModelAndView();
			view.setViewName("before/culture");
			return view;			
		}
		/*进入大理景点页面*/
		@RequestMapping(value="/toTravel")
		public ModelAndView toTravel(){
			ModelAndView view =new ModelAndView();
			view.setViewName("before/travel");
			return view;			
		}
	
	
	/*进入后台头部*/
	@RequestMapping(value="/toHead")
	public ModelAndView head(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/head");
		return view;			
	}
	/*进入后台头部2*/
	@RequestMapping(value="/toHead2")
	public ModelAndView head2(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/head2");
		return view;			
	}
	/*进入后台左侧菜单栏*/
	@RequestMapping(value="/toLeft")
	public ModelAndView left(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/left");
		return view;			
	}
	/*进入后台主页*/
	@RequestMapping(value="/toMain")
	public ModelAndView main(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/main");
		return view;			
	}
	/*进入后台用户管理*/
	@RequestMapping(value="/toTab")
	public ModelAndView tab(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/tab");
		return view;			
	}
	/*进入后台p3*/
	@RequestMapping(value="/toP3")
	public ModelAndView p3(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/p3");
		return view;			
	}
	/*进入后台p2*/
	@RequestMapping(value="/toP2")
	public ModelAndView p2(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/p2");
		return view;			
	}
	/*进入后台p1*/
	@RequestMapping(value="/toP1")
	public ModelAndView p1(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/p1");
		return view;			
	}
	/*进入后台修改用户密码*/
	@RequestMapping(value="/toChangepwd")
	public ModelAndView changepwd(){
		ModelAndView view =new ModelAndView();
		view.setViewName("after/changepwd");
		return view;			
	}
	

}
