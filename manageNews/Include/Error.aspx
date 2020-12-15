<%@ Page language="c#" Codebehind="Error.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.include.Error" %>
<%@ Register TagPrefix="uc2" TagName="top" Src="top.ascx" %>
<%@ Register TagPrefix="uc2" TagName="foot" Src="foot.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Error渐飞网站管理系统 </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">BODY { MARGIN: 0px }
		</style>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<uc2:top id="Top1" runat="server"></uc2:top>
			<p>&nbsp;</p>
			<table width="412" border="0" align="center" cellpadding="2" cellspacing="3" class="panel_main" style="WORD-BREAK: break-all; WORD-WRAP: break-word">
				<tr>
					<td colspan="2" class="panel_header">系统检测有错误</td>
				</tr>
				<tr>
					<td width="65" class="flyoutSubHeading" style="BORDER-TOP: #cccccc 1px; BORDER-LEFT: #cccccc 1px; BORDER-BOTTOM: #cccccc 1px dashed" #invalid_attr_id="#cccccc 1px">错误描述</td>
					<td width="328" class="panel_text">
						<asp:Label id="err_depict" runat="server">无</asp:Label>&nbsp;</td>
				</tr>
				<tr>
					<td class="flyoutSubHeading" style="BORDER-TOP: #cccccc 1px; BORDER-LEFT: #cccccc 1px; BORDER-BOTTOM: #cccccc 1px dashed" #invalid_attr_id="#cccccc 1px">错误代码</td>
					<td class="panel_text">
						<asp:Label id="err_code" runat="server">无</asp:Label>&nbsp;</td>
				</tr>
				<tr>
					<td class="flyoutSubHeading" style="BORDER-TOP: #cccccc 1px; BORDER-LEFT: #cccccc 1px; BORDER-BOTTOM: #cccccc 1px dashed" #invalid_attr_id="#cccccc 1px">错误页面</td>
					<td class="panel_text">
						<asp:Label id="err_url" runat="server"></asp:Label>&nbsp;</td>
				</tr>			
				<tr align="center">
					<td colspan="2"><a href="http://www.JFCms.Net" target="_blank"> &nbsp;访问官方网站获得帮助!</a></td>
				</tr>
			</table>
			<p>&nbsp;</p>
			<uc2:foot id="Foot1" runat="server"></uc2:foot>
		</form>
	</body>
</HTML>
<script language="javascript">
 //if (self.location!=top.location)top.location.href="error.aspx";
</script>
