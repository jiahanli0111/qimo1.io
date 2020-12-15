<%@ Page language="c#" Codebehind="JF_AdsCovert.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_AdsCovert" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>广告管理 </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<SCRIPT src="../include/js/date.js" charset="gb2312"></SCRIPT>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TBODY>
						<TR>
							<TD class="tab-on" id="navcell" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">&nbsp; 
								计划任务</TD>
							<TD align="right" class="tab-none">
								<asp:button id="a_ok" runat="server" CssClass="button" Text="确定"></asp:button>
								<INPUT name="button" type="button" class="button" onclick="window.close()" value="关闭">&nbsp;</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE class="tab-content" cellSpacing="5" cellPadding="0" width="100%" border="0">
					<TBODY>
						<TR>
							<TD vAlign="top" class="td_heading">停止播放时间</TD>
						</TR>
						<TR>
							<TD vAlign="top">
								<asp:TextBox id="etime" runat="server" CssClass="form80"></asp:TextBox>&nbsp; <INPUT class="button" name="ret" onclick="showCalendar(CalendarLayer,this.form.etime)"
									type="button" value="日期"></TD>
						</TR>
					</TBODY>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
