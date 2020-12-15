function Del(){if(confirm("您确定要删除?")){return true;}return false;}
function Modify(){if(confirm("您确定要修改?")){return true;}return false;}
function CheckAll(form)
{
//alert('d');
for (var i=0;i<Form1.elements.length;i++)
{
 var e = Form1.elements[i];
 if (e.name != 'chkall')
   e.checked = Form1.chkall.checked;
}
}
function Operation(){if(confirm("您确定此操作?")){return true;}return false;}
function setCategoryIndexTemplet(newMode)
{
  bTextMode = newMode;
  var cont
  if (bTextMode) {
	cont=Form1.CategoryIndexTemplet.value
	Form1.ViewCategoryIndexTemplet.checked=false
	CategoryIndexTemplet.document.body.innerHTML=cont
  } 
  else {
    cont=Form1.CategoryIndexTemplet.value
    CategoryIndexTemplet.document.body.innerHTML=cont	
  }
  Form1.CategoryIndexTemplet.focus();
}
function setCategorySubPageTemplet(newMode)
{
  bTextMode = newMode;
  var cont
  if (bTextMode) {
	cont=Form1.CategorySubPageTemplet.value
	Form1.ViewCategorySubPageTemplet.checked=false
	CategorySubPageTemplet.document.body.innerHTML=cont
  } 
  else {
    cont=Form1.CategorySubPageTemplet.value
    CategorySubPageTemplet.document.body.innerHTML=cont	
  }
  Form1.CategorySubPageTemplet.focus();
}

function setNewsTempletMode(newMode)
{
  bTextMode = newMode;
  var cont
  if (bTextMode) {
	cont=Form1.NewsTemplet.value
	Form1.viewNewshtml.checked=false
	NewsTemplet.document.body.innerHTML=cont
  } 
  else {
    cont=Form1.NewsTemplet.value
    NewsTemplet.document.body.innerHTML=cont	
  }
  Form1.NewsTemplet.focus();
}

//HTML预览 width=400,height=50,
function runEx(){
var priview = window.open("", "priview", "status=no,menubar=no,scrollbars=yes,resizable=yes");
priview.document.open("text/html", "replace"); 
priview.document.write(unescape(event.srcElement.parentElement.children[0].value)); 
priview.document.close(); 
}

//检查新闻添加、修改
function chkNews(otype)
{
   if (Form1.title.value=="")
   {
 	 Form1.title.focus();
	 alert("请输入标题!");return false;
   }
   if(Form1.TitleNews.checked==true)
   {
 	 if(Form1.objurl.value=="http://" || Form1.objurl.value=="")
	   {
		 Form1.objurl.focus();
	     alert("请输入新闻连接!");return false;
	   }
   }
   if(otype=="modify")
	{
	   return Modify();
	}
}

//批量模板修改
function chkModifyTemplet()
{
   if(Form1.all.checked!=true)
   {
 	 if(Form1.souText.value=="")
	   {
		 Form1.souText.focus();
	     alert("请输入查找文本!");return false;
	   }
   }
   if (Form1.objText.value=="")
   {
 	 Form1.objText.focus();
	 alert("请输入替换文本!");return false;
   }
   return Operation();
}

//新闻采集添加修改
function chkGetNews(otype)
{
  if (Form1.Title.value=="")
  {
	Form1.Title.focus();
	alert("请输入标题");return false;
  }
  if (Form1.ListUrl.value=="")
  {
	Form1.ListUrl.focus();
	alert("请输入采集地址");return false;
  }
  if(otype=="modify")
	{
	   return Modify();
	}
}
//设置上传文件数
function setid()
{
  str='';
  if(!window.Form1.upcount.value)
   window.Form1.upcount.value=1;
   for(i=1;i<=window.Form1.upcount.value;i++)
     str+='文件'+i+':<input type="file" name="file'+i+'"><br>';
  window.upid.innerHTML=str+'';
}
//新开窗口
function newwin(path,name,width,height)
{
 var mywin;
 mywin=window.open(path,name,"scrollbars,top=0,left=0,width="+width+",height="+height+"");
 mywin.focus();
}
//
function copyUrl(head,url)
{var Body='';Body+= head;Body+='\r\n'+url;window.clipboardData.setData("Text",Body);
alert("文件《"+url+"》地址已复制到剪贴版，你可按CTRL+V系统的编辑器中粘贴图片地址即可。");
}

//修改文件名称
function rename(fileName,Fid)
{
	var newName = window.prompt("输入新文件名： '" + fileName + "'", fileName);
	if(newName != null)
		document.location.href = '?action=rename&Fid='+Fid+'&FileName='+fileName+'&NewFileName=' + newName;
}
//检查用户
function CheckUser(otype)
{
  if (Form1.UserName.value=="")
  {
    Form1.UserName.focus();
	alert("请输入用户名");return false
  }
  if (Form1.NickName.value=="")
  {
    Form1.NickName.focus();
	alert("请输入昵称");return false
  }
  if(otype=="1")
  {
   if (Form1.UserPwd.value=="")
   {
	 Form1.UserPwd.focus();
	 alert("请输入密码");return false
   }
   if (Form1.con_UserPwd.value=="")
   {
	 Form1.con_UserPwd.focus();
	 alert("请输入确认密码");return false
   }
  }
  if (Form1.con_UserPwd.value!=Form1.UserPwd.value)
  {
	Form1.con_UserPwd.focus();
	Form1.con_UserPwd.value=""
	alert("确认密码输入有误，请重新输入");return false
  }
}
//检查责任编辑输入值
function chkEditor()
{
  if (Form1.EditorName.value=="")
  {
	Form1.EditorName.focus();
	alert("请输入编辑名称");return false;
  }
}
//检查相关连接输入值
function chkUrlManage(otype)
{
  if(otype=="add")
  {
   if (Form1.UrlName.value=="")
   {
 	 Form1.UrlName.focus();
	 alert("请输入连接名称");return false;
   }
   if (Form1.UrlPath.value==""  || Form1.UrlPath.value=="http://")
   {
	 Form1.UrlPath.focus();
	 alert("请输入连接地址");return false;
   }
  }
  else
  {
   if (Form1.u_UrlName.value=="")
   {
 	 Form1.u_UrlName.focus();
	 alert("请输入连接名称");return false;
   }
   if (Form1.u_UrlPath.value=="" || Form1.u_UrlPath.value=="http://")
   {
	 Form1.u_UrlPath.focus();
	 alert("请输入连接地址");return false;
   }
  }
}
//检查内容来源输入值
function chkFromManage(otype)
{
  if(otype=="add")
  {
   if (Form1.FromName.value=="")
   {
 	 Form1.FromName.focus();
	 alert("请输入连接名称");return false;
   }
   if (Form1.FromPath.value==""  || Form1.FromPath.value=="http://")
   {
	 Form1.FromPath.focus();
	 alert("请输入连接地址");return false;
   }
  }
  else
  {
   if (Form1.f_FromName.value=="")
   {
 	 Form1.f_FromName.focus();
	 alert("请输入连接名称");return false;
   }
   if (Form1.f_FromPath.value=="" || Form1.f_FromPath.value=="http://")
   {
	 Form1.f_FromPath.focus();
	 alert("请输入连接地址");return false;
   }
  }
}
//添加、编辑新闻责任编辑列表选值
function drop2text(textname,str){
textname.value=str;
return;
}
//检查投票选项
function chkVote()
{
   if (Form1.VoteTitle.value=="")
   {
 	 Form1.VoteTitle.focus();
	 alert("请输入投票标题!");return false;
   }
   if(Form1.Votetype.checked==false)
   {
 	 Form1.Votetype.focus();
	 alert("请选择投票类型!");return false;
   }
   if (Form1.VoteOper.value=="")
   {
 	 Form1.VoteOper.focus();
	 alert("请输入投票标题!");return false;
   }
}
//投票设定
function setoper()
  {
  str='';
  if(!window.Form1.opcount.value)
   window.Form1.opcount.value=1;
   for(i=1;i<=window.Form1.opcount.value;i++)
     str+='<u>选项'+i+'</u>  <input type="text" name="VoteOper" class=form80>  <u>票数</u>  <input type="text" name="StatCount" size=5 class=form80 value="0" title="只能为整数"><br>';
  window.opid.innerHTML=str+'';
}
//检查是否为有效数字
function Isvalidity(val,name){
if (val.value!='' && (isNaN(val.value) || val.value<=0))
    {alert(name+"应填有效数字！");
    val.value="";
     val.focus();
	 }
}
//检查投票选项
function chkVote()
{
   if (Form1.VoteTitle.value=="")
   {
 	 Form1.VoteTitle.focus();
	 alert("请输入投票标题!");return false;
   }
   if(Form1.Votetype.checked==false)
   {
 	 Form1.Votetype.focus();
	 alert("请选择投票类型!");return false;
   }
   if (Form1.VoteOper.value=="")
   {
 	 Form1.VoteOper.focus();
	 alert("请输入投票标题!");return false;
   }
}

//检查广告类别
function chkAdsCategory()
{
   if (Form1.CategoryName.value=="")
   {
 	 Form1.CategoryName.focus();
	 alert("请输入类别名!");return false;
   }
   if (Form1.Height.value=="")
   {
 	 Form1.Height.focus();
	 alert("请输入框架高度!");return false;
   }
   if (Form1.Width.value=="")
   {
 	 Form1.Width.focus();
	 alert("请输入框架宽度!");return false;
   }
}

//检查广告选项
function chkAds()
{
   if (Form1.AdsName.value=="")
   {
 	 Form1.AdsName.focus();
	 alert("请输入广告名称!");return false;
   }
   if(Form1.Height.value=="")
   {
 	 Form1.Height.focus();
	 alert("请输入图片(FLASH)高度!");return false;
   }
   if (Form1.Width.value=="")
   {
 	 Form1.Width.focus();
	 alert("请输入图片(FLASH)宽度!");return false;
   }
   if (Form1.MediaUrl.value=="")
   {
 	 Form1.MediaUrl.focus();
	 alert("请输入图片(FLASH)路径!");return false;
   }
   if (Form1.ObjUrl.value=="")
   {
 	 Form1.ObjUrl.focus();
	 alert("请输入广告目标连接!");return false;
   }
}
//标题新闻
function CheckNewsTitle(){
if (document.Form1.TitleNews.checked == true) {
		tab_content.style.display = "none";
		tr_objurl.style.display = "";
		tr_templet.style.display = "none";
		td_notpage.style.display = "none";
}else{
		tab_content.style.display = "";
		tr_objurl.style.display = "none";
		tr_templet.style.display = "";
		td_notpage.style.display = "";
}
}
//检查是否生成缩略图
function chkCreateSmallImg()
{
	if(Form1.CreateSmallImg.checked==true)
	{
		CreateImg.style.display="";
	}
	else
	{
		CreateImg.style.display="none";
	}
}
//检查水印类型
function chkWatermarkType()
{
	if(Form1.WordWatermark.checked==true)
	{
		tr_WordWatermark.style.display="";
		tr_ImgWatermark.style.display="none";
	}
	if(Form1.ImgWatermark.checked==true)
	{
		tr_ImgWatermark.style.display="";
		tr_WordWatermark.style.display="none";
	}
	if(Form1.NotWate.checked==true)
	{
		tr_ImgWatermark.style.display="none";
		tr_WordWatermark.style.display="none";
	}
}

//检查专题是否填写完整
function chkSubject()
{
   if (Form1.title.value=="")
   {
 	 Form1.title.focus();
	 alert("请输入专题标题!");return false;
   }
   if (Form1.editer.value=="")
   {
 	 Form1.editer.focus();
	 alert("请输入责任编辑!");return false;
   }
   if (Form1.SubjectFileName.value=="")
   {
 	 Form1.SubjectFileName.focus();
	 alert("请输入专题文件名!");return false;
   }
}

//检查首页是否填写完整
function chkIndex()
{
   if (Form1.IndexTemplet.value=="")
   {
 	 Form1.IndexTemplet.focus();
	 alert("请输入模板!");return false;
   }
   if (Form1.IndexPath.value=="")
   {
 	 Form1.IndexPath.focus();
	 alert("请输入首页路径、文件名!");return false;
   }
}

//检查自定义JS是否填写完整
function chkPrivateJS()
{
   if (Form1.JSTitle.value=="")
   {
 	 Form1.JSTitle.focus();
	 alert("请输入JS标题!");return false;
   }
   if (Form1.JSFileName.value=="")
   {
 	 Form1.JSFileName.focus();
	 alert("请输入JS文件名!");return false;
   }
   if (Form1.JSContent.value=="")
   {
 	 Form1.JSContent.focus();
	 alert("请输入JS模板内容!");return false;
   }
}

//检查自定义JS参数设置是否填写完整
function chkPrivateJSSetup()
{
   if (Form1.PrivateJSDirPath.value=="")
   {
 	 Form1.PrivateJSDirPath.focus();
	 alert("请输入文件夹路径!");return false;
   }
   if (Form1.PrivateJSWebUrl.value=="")
   {
 	 Form1.PrivateJSWebUrl.focus();
	 alert("请输入文件夹WEB地址!");return false;
   }
}

//检查自定义模板是否填写完整
function chkTemplet()
{
   if (Form1.Title.value=="")
   {
 	 Form1.Title.focus();
	 alert("请输入模板标题!");return false;
   }
   if (Form1.Templet.value=="")
   {
 	 Form1.Templet.focus();
	 alert("请输入模板内容!");return false;
   }
}

//检查
function chkTaskType()
{
   alert(Form1.TaskType.Checked);
}

//更多属性
function CheckMorePro(){
if (document.Form1.MorePro.checked == true) {
		tab_subject.style.display = "";
		tr_rate.style.display = "";
}else{
		tab_subject.style.display = "none";
		tr_rate.style.display = "none";
}
}