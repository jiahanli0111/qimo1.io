<%@ Page CodeBehind="JF_Ads_Menu.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_Ads_Menu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>���Ŀ¼ </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<link href="../images/tree/dtree.css" rel="stylesheet" type="text/css">
		<SCRIPT src="../images/tree/dtree.js" type="text/javascript" charset="gb2312"></SCRIPT>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="content-language" content="gb2312">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form name="form1">
			<FONT face="����">
				<div id="readcategory">��ȡ��Ϣ��ȴ�...</div>
				<script type="text/javascript">
		        folderTree = new dTree('folderTree');
		        folderTree.add(-1,-99,"������",'javascript:','','main');
		        folderTree.add(2, -1, '���ռ�', 'JF_Main.aspx','','main','../images/Tree/images/default.url.gif');
				folderTree.add(3, -1, '������', 'javascript:','','main');
				<%=treetxt%>
				folderTree.add(4, -1, '������', 'JF_Category.aspx','','main','../images/Tree/images/default.url.gif');
				folderTree.add(5, -1, '��ȡ������', 'JF_GetAdsCode.aspx','','main','../images/Tree/images/default.url.gif');				
				document.write(folderTree);
				folderTree.openAll();
				</script>
				<INPUT type="hidden" name="currentFolderID">
				<SCRIPT language="JavaScript">
			  readcategory.style.display = "none";
				</SCRIPT>
			</FONT>
		</form>
	</body>
</HTML>
