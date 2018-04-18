var b = new Boolean();  
    b = false;  
var a = new Boolean();  
    a = false;  
    function checkSubmit(input_pw1,input_pw2){  
        var userName = user_form.input_count.value;  
        var passWord = user_form.input_pw1.value;  
        var passWordDemo = user_form.input_pw2.value; 
        if(userName!=0){
            if(passWord!=0){  
                if(passWordDemo!=0){  
                    if(userName.length<20 && userName.length>4)  
                    {  
                        if(passWord.length<25 && passWord.length>5){  
                            if(b){  
                                document.user_form.submit();  
                            }else{  
                                alert("两次输入的密码不一致！");  
                                return false;
                            }  
                        }else{  
                            alert("密码长度必须在6-25个字符之间！");  
                            return false;
                        	}       
                    }else{  
                        alert("用户名长度必须在5-20个字符之间！");
                        return false;
                    }  
                }else{  
                    alert("您还没有填写确认密码!");  
                    return false;
                }  
            }else{  
                alert("请您先填写要注册的用户密码！");  
                return false;
            }  
        }else{  
            alert("请您先填写要注册的用户名！");  
            return false;
        }  
    }  
      
    function checkPassword2()
	{
	    var id=document.getElementById("input_pw1");
	    var id2=document.getElementById("input_pw2");
	    var password1 = id.value;    
	    var password2 = id2.value;
	    if(password1 !=password2)
	    {
	       b=false;
	       return false;
	    }
	    else 
	    {
	    	b=true;
	    	return true;    
	    }
	}		
	
function checkSubmit2(xm,email){  
    var Name = self_form.user_name.value;
    var Email = self_form.user_email.value;  
    if(Name!=0){
       
    }else{  
        alert("请您先填写您的姓名！");  
        return false;
    }  
    if(Email!=0){  
    }
    else{
        alert("请您先填写邮箱地址！");  
        return false;
    }  
    if(a){
    	
    }else{  
        alert("邮箱格式不正确！");  
    	return false;
    }  
}  
function checkEmail(){
　　var myemail=self_form.user_email.value;
　　var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
　　if(!myReg.test(myemail)){
	    a=false;
	    return false;
	}
	else{
	  	a=true;
	    return true;    
	}
}
function checkNews(title,zhengwen){  
    var news_title = form_news.title.value;
    var news_article = form_news.zhengwen.value;  
    if(news_title!=0){
       
    }else{  
        alert("标题不能为空！");  
        return false;
    }  
    if(news_article!=0){  
    
    }
    else{
        alert("请输入新闻内容！");  
        return false;
    }  
}  