function checkNews(form){  
	if (document.form.title.value=="") {  
		alert("请输入标题！");
	    document.form.title.focus();
	    return false;
	}
	if (document.form.zhengwen.value=="") {  
		alert("请输入正文！");
	    document.form.zhengwen.focus();
	    return false;
	}
}  