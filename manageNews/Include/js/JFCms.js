function Del(){if(confirm("��ȷ��Ҫɾ��?")){return true;}return false;}
function Modify(){if(confirm("��ȷ��Ҫ�޸�?")){return true;}return false;}
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
function Operation(){if(confirm("��ȷ���˲���?")){return true;}return false;}
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

//HTMLԤ�� width=400,height=50,
function runEx(){
var priview = window.open("", "priview", "status=no,menubar=no,scrollbars=yes,resizable=yes");
priview.document.open("text/html", "replace"); 
priview.document.write(unescape(event.srcElement.parentElement.children[0].value)); 
priview.document.close(); 
}

//���������ӡ��޸�
function chkNews(otype)
{
   if (Form1.title.value=="")
   {
 	 Form1.title.focus();
	 alert("���������!");return false;
   }
   if(Form1.TitleNews.checked==true)
   {
 	 if(Form1.objurl.value=="http://" || Form1.objurl.value=="")
	   {
		 Form1.objurl.focus();
	     alert("��������������!");return false;
	   }
   }
   if(otype=="modify")
	{
	   return Modify();
	}
}

//����ģ���޸�
function chkModifyTemplet()
{
   if(Form1.all.checked!=true)
   {
 	 if(Form1.souText.value=="")
	   {
		 Form1.souText.focus();
	     alert("����������ı�!");return false;
	   }
   }
   if (Form1.objText.value=="")
   {
 	 Form1.objText.focus();
	 alert("�������滻�ı�!");return false;
   }
   return Operation();
}

//���Ųɼ�����޸�
function chkGetNews(otype)
{
  if (Form1.Title.value=="")
  {
	Form1.Title.focus();
	alert("���������");return false;
  }
  if (Form1.ListUrl.value=="")
  {
	Form1.ListUrl.focus();
	alert("������ɼ���ַ");return false;
  }
  if(otype=="modify")
	{
	   return Modify();
	}
}
//�����ϴ��ļ���
function setid()
{
  str='';
  if(!window.Form1.upcount.value)
   window.Form1.upcount.value=1;
   for(i=1;i<=window.Form1.upcount.value;i++)
     str+='�ļ�'+i+':<input type="file" name="file'+i+'"><br>';
  window.upid.innerHTML=str+'';
}
//�¿�����
function newwin(path,name,width,height)
{
 var mywin;
 mywin=window.open(path,name,"scrollbars,top=0,left=0,width="+width+",height="+height+"");
 mywin.focus();
}
//
function copyUrl(head,url)
{var Body='';Body+= head;Body+='\r\n'+url;window.clipboardData.setData("Text",Body);
alert("�ļ���"+url+"����ַ�Ѹ��Ƶ������棬��ɰ�CTRL+Vϵͳ�ı༭����ճ��ͼƬ��ַ���ɡ�");
}

//�޸��ļ�����
function rename(fileName,Fid)
{
	var newName = window.prompt("�������ļ����� '" + fileName + "'", fileName);
	if(newName != null)
		document.location.href = '?action=rename&Fid='+Fid+'&FileName='+fileName+'&NewFileName=' + newName;
}
//����û�
function CheckUser(otype)
{
  if (Form1.UserName.value=="")
  {
    Form1.UserName.focus();
	alert("�������û���");return false
  }
  if (Form1.NickName.value=="")
  {
    Form1.NickName.focus();
	alert("�������ǳ�");return false
  }
  if(otype=="1")
  {
   if (Form1.UserPwd.value=="")
   {
	 Form1.UserPwd.focus();
	 alert("����������");return false
   }
   if (Form1.con_UserPwd.value=="")
   {
	 Form1.con_UserPwd.focus();
	 alert("������ȷ������");return false
   }
  }
  if (Form1.con_UserPwd.value!=Form1.UserPwd.value)
  {
	Form1.con_UserPwd.focus();
	Form1.con_UserPwd.value=""
	alert("ȷ������������������������");return false
  }
}
//������α༭����ֵ
function chkEditor()
{
  if (Form1.EditorName.value=="")
  {
	Form1.EditorName.focus();
	alert("������༭����");return false;
  }
}
//��������������ֵ
function chkUrlManage(otype)
{
  if(otype=="add")
  {
   if (Form1.UrlName.value=="")
   {
 	 Form1.UrlName.focus();
	 alert("��������������");return false;
   }
   if (Form1.UrlPath.value==""  || Form1.UrlPath.value=="http://")
   {
	 Form1.UrlPath.focus();
	 alert("���������ӵ�ַ");return false;
   }
  }
  else
  {
   if (Form1.u_UrlName.value=="")
   {
 	 Form1.u_UrlName.focus();
	 alert("��������������");return false;
   }
   if (Form1.u_UrlPath.value=="" || Form1.u_UrlPath.value=="http://")
   {
	 Form1.u_UrlPath.focus();
	 alert("���������ӵ�ַ");return false;
   }
  }
}
//���������Դ����ֵ
function chkFromManage(otype)
{
  if(otype=="add")
  {
   if (Form1.FromName.value=="")
   {
 	 Form1.FromName.focus();
	 alert("��������������");return false;
   }
   if (Form1.FromPath.value==""  || Form1.FromPath.value=="http://")
   {
	 Form1.FromPath.focus();
	 alert("���������ӵ�ַ");return false;
   }
  }
  else
  {
   if (Form1.f_FromName.value=="")
   {
 	 Form1.f_FromName.focus();
	 alert("��������������");return false;
   }
   if (Form1.f_FromPath.value=="" || Form1.f_FromPath.value=="http://")
   {
	 Form1.f_FromPath.focus();
	 alert("���������ӵ�ַ");return false;
   }
  }
}
//��ӡ��༭�������α༭�б�ѡֵ
function drop2text(textname,str){
textname.value=str;
return;
}
//���ͶƱѡ��
function chkVote()
{
   if (Form1.VoteTitle.value=="")
   {
 	 Form1.VoteTitle.focus();
	 alert("������ͶƱ����!");return false;
   }
   if(Form1.Votetype.checked==false)
   {
 	 Form1.Votetype.focus();
	 alert("��ѡ��ͶƱ����!");return false;
   }
   if (Form1.VoteOper.value=="")
   {
 	 Form1.VoteOper.focus();
	 alert("������ͶƱ����!");return false;
   }
}
//ͶƱ�趨
function setoper()
  {
  str='';
  if(!window.Form1.opcount.value)
   window.Form1.opcount.value=1;
   for(i=1;i<=window.Form1.opcount.value;i++)
     str+='<u>ѡ��'+i+'</u>  <input type="text" name="VoteOper" class=form80>  <u>Ʊ��</u>  <input type="text" name="StatCount" size=5 class=form80 value="0" title="ֻ��Ϊ����"><br>';
  window.opid.innerHTML=str+'';
}
//����Ƿ�Ϊ��Ч����
function Isvalidity(val,name){
if (val.value!='' && (isNaN(val.value) || val.value<=0))
    {alert(name+"Ӧ����Ч���֣�");
    val.value="";
     val.focus();
	 }
}
//���ͶƱѡ��
function chkVote()
{
   if (Form1.VoteTitle.value=="")
   {
 	 Form1.VoteTitle.focus();
	 alert("������ͶƱ����!");return false;
   }
   if(Form1.Votetype.checked==false)
   {
 	 Form1.Votetype.focus();
	 alert("��ѡ��ͶƱ����!");return false;
   }
   if (Form1.VoteOper.value=="")
   {
 	 Form1.VoteOper.focus();
	 alert("������ͶƱ����!");return false;
   }
}

//��������
function chkAdsCategory()
{
   if (Form1.CategoryName.value=="")
   {
 	 Form1.CategoryName.focus();
	 alert("�����������!");return false;
   }
   if (Form1.Height.value=="")
   {
 	 Form1.Height.focus();
	 alert("�������ܸ߶�!");return false;
   }
   if (Form1.Width.value=="")
   {
 	 Form1.Width.focus();
	 alert("�������ܿ��!");return false;
   }
}

//�����ѡ��
function chkAds()
{
   if (Form1.AdsName.value=="")
   {
 	 Form1.AdsName.focus();
	 alert("������������!");return false;
   }
   if(Form1.Height.value=="")
   {
 	 Form1.Height.focus();
	 alert("������ͼƬ(FLASH)�߶�!");return false;
   }
   if (Form1.Width.value=="")
   {
 	 Form1.Width.focus();
	 alert("������ͼƬ(FLASH)���!");return false;
   }
   if (Form1.MediaUrl.value=="")
   {
 	 Form1.MediaUrl.focus();
	 alert("������ͼƬ(FLASH)·��!");return false;
   }
   if (Form1.ObjUrl.value=="")
   {
 	 Form1.ObjUrl.focus();
	 alert("��������Ŀ������!");return false;
   }
}
//��������
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
//����Ƿ���������ͼ
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
//���ˮӡ����
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

//���ר���Ƿ���д����
function chkSubject()
{
   if (Form1.title.value=="")
   {
 	 Form1.title.focus();
	 alert("������ר�����!");return false;
   }
   if (Form1.editer.value=="")
   {
 	 Form1.editer.focus();
	 alert("���������α༭!");return false;
   }
   if (Form1.SubjectFileName.value=="")
   {
 	 Form1.SubjectFileName.focus();
	 alert("������ר���ļ���!");return false;
   }
}

//�����ҳ�Ƿ���д����
function chkIndex()
{
   if (Form1.IndexTemplet.value=="")
   {
 	 Form1.IndexTemplet.focus();
	 alert("������ģ��!");return false;
   }
   if (Form1.IndexPath.value=="")
   {
 	 Form1.IndexPath.focus();
	 alert("��������ҳ·�����ļ���!");return false;
   }
}

//����Զ���JS�Ƿ���д����
function chkPrivateJS()
{
   if (Form1.JSTitle.value=="")
   {
 	 Form1.JSTitle.focus();
	 alert("������JS����!");return false;
   }
   if (Form1.JSFileName.value=="")
   {
 	 Form1.JSFileName.focus();
	 alert("������JS�ļ���!");return false;
   }
   if (Form1.JSContent.value=="")
   {
 	 Form1.JSContent.focus();
	 alert("������JSģ������!");return false;
   }
}

//����Զ���JS���������Ƿ���д����
function chkPrivateJSSetup()
{
   if (Form1.PrivateJSDirPath.value=="")
   {
 	 Form1.PrivateJSDirPath.focus();
	 alert("�������ļ���·��!");return false;
   }
   if (Form1.PrivateJSWebUrl.value=="")
   {
 	 Form1.PrivateJSWebUrl.focus();
	 alert("�������ļ���WEB��ַ!");return false;
   }
}

//����Զ���ģ���Ƿ���д����
function chkTemplet()
{
   if (Form1.Title.value=="")
   {
 	 Form1.Title.focus();
	 alert("������ģ�����!");return false;
   }
   if (Form1.Templet.value=="")
   {
 	 Form1.Templet.focus();
	 alert("������ģ������!");return false;
   }
}

//���
function chkTaskType()
{
   alert(Form1.TaskType.Checked);
}

//��������
function CheckMorePro(){
if (document.Form1.MorePro.checked == true) {
		tab_subject.style.display = "";
		tr_rate.style.display = "";
}else{
		tab_subject.style.display = "none";
		tr_rate.style.display = "none";
}
}