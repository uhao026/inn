/* function validate()
    {
    var username=document.forms[0].username.value;
    var phonenumber=document.forms[0].phonenumber.value;
    var password=document.forms[0].password.value;
     
    if(username.length<2){
        alert("请输入合法用户名！");//////////////////////////////////////////验证用户名
    }
    else if(phonenumber.length<11){
        alert("您的手机号应该为十一位！");////////////////////////////////////验证手机号
    }
    else if(password.length<6){
        alert("密码至少六位！");////////////////////////////////////////////验证密码
    }
    else{
        document.forms[0].submit();//////////////////////////////////////提交到userrAdd2.jsp
    }
    }*/
 
 function validate()
 {
	 var user_name = document.forms[0].user_name.value;
	 var user_password = document.forms[0].user_password.value;
	 var user_age = document.forms[0].user_age.value;
	 var user_email = document.forms[0].user_email.value;
	 var user_phone = document.forms[0].user_phone.value;
	 var user_describle = document.forms[0].user_describle.value;
	 
	
 }