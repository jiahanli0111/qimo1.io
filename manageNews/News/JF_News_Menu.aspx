<%@ Page CodeBehind="JF_News_Menu.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_News_Menu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>管理菜单</title>
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
			<div id="readcategory">读取栏目请等待...</div>
			<script type="text/javascript">
		        folderTree = new dTree('folderTree');
		        folderTree.add(-1,-99,"网站目录",'javascript:','','main');
				<%=treetxt%>
				document.write(folderTree);
				//folderTree.openAll();
			</script>
			<INPUT type="hidden" name="currentFolderID">
			<SCRIPT language="JavaScript">
			  readcategory.style.display = "none";
			</SCRIPT>
	</form>
	</body>
</HTML>
