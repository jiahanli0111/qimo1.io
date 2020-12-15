<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Page CodeBehind="JF_GetNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_GetNews" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>新闻采集管理 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top>
				<uc1:Top_Menu id="Top_Menu1" runat="server"></uc1:Top_Menu>
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="WIDTH: 115px" border="0"></TD>
									<TD vAlign="bottom" align="left" height="10"></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD border="0"><IMG height="23" src="../images/leftcorner.gif" width="23"></TD>
									<TD vAlign="bottom" align="left" width="100%" background="../images/backheading.gif"
										height="24"><SPAN class="tdtoptitle">新闻采集规则</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing="0" cellPadding="0" width="80%" align="center" border="0">
					<TR>
						<TD colSpan="11" height="8"></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="11" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD noWrap width="56" background="../images/tableheadingback.gif"><img src="" width="5" height="0">ID</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="289" noWrap background="../images/tableheadingback.gif">采集规则名称</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="100" noWrap background="../images/tableheadingback.gif">采集</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="208" noWrap background="../images/tableheadingback.gif">增加时间</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="76" noWrap background="../images/tableheadingback.gif">修改</TD>
						<TD noWrap width="8" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="52" noWrap background="../images/tableheadingback.gif">删除</TD>
					</TR>
					<asp:repeater id="list_getnews" runat="server">
						<ItemTemplate>
							<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
								onMouseOut="this.style.backgroundColor='#FFFFFF'">
								<TD noWrap width="56"><img src="" width="5" height="0"><%#DataBinder.Eval(Container.DataItem,"gid")%></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><a href='JF_GetListNews.aspx?gid=<%#DataBinder.Eval(Container.DataItem,"gid")%>'><%#DataBinder.Eval(Container.DataItem,"Title")%></a></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><a href='JF_GetListNews.aspx?gid=<%#DataBinder.Eval(Container.DataItem,"gid")%>'>采集新闻</a></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd  HH:mm}")%></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><a href='JF_EditGetNews.aspx?action=md&gid=<%# DataBinder.Eval(Container.DataItem,"gid")%>'>修改</a></TD>
								<TD noWrap width="8"></TD>
								<TD noWrap><a href='?action=del&gid=<%# DataBinder.Eval(Container.DataItem,"gid")%>' onclick="return Del()">删除</a></TD>
							</TR>
							<TR>
								<TD colSpan="11" height="1" background="../images/bg_line.gif"></TD>
							</TR>
						</ItemTemplate>
					</asp:repeater></TABLE>
				<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<webdiyer:AspNetPager id="pager" runat="server" PageSize="25" ShowCustomInfoSection="Right" Width="128px"></webdiyer:AspNetPager>
						</td>
					</tr>
					<TR>
						<TD height="10"></TD>
					</TR>
				</table>
				
			</form>
		</FONT>
	</body>
</HTML>
