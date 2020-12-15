<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Page CodeBehind="JF_GetListNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_GetListNews" %>
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
										height="24"><SPAN class="tdtoptitle">新闻采集列表</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="80%" align="center" border="0">
					<TR>
						<TD colSpan="9" height="8"></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="9" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD width="30" align="center" noWrap background="../images/tableheadingback.gif">序号</TD>
						<TD width="6" align="center" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="633" align="center" noWrap background="../images/tableheadingback.gif"><img src="" width="2" height="0">新闻标题</TD>
						<TD width="6" align="center" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="66" align="center" noWrap background="../images/tableheadingback.gif">来源</TD>
						<TD width="6" align="center" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="46" align="center" noWrap background="../images/tableheadingback.gif">编辑</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="44" noWrap background="../images/tableheadingback.gif">&nbsp;</TD>
					</TR>
					<asp:repeater id="list_getnews" runat="server">
						<ItemTemplate>
							<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
								onMouseOut="this.style.backgroundColor='#FFFFFF'">								
								<TD align="center" noWrap><%#Container.ItemIndex+1%></TD>
								<TD valign="top" noWrap>&nbsp;</TD>
								<TD noWrap>
									<img src="" width="2" height="0"><%#DataBinder.Eval(Container.DataItem,"Title")%>
								</TD>
								<TD valign="top" noWrap>&nbsp;</TD>
								<TD align="center" noWrap><a href="<%#DataBinder.Eval(Container.DataItem,"Url")%>" target=_blank>来源</a></TD>
								<TD noWrap>&nbsp;</TD>
								<TD align="center" noWrap><a href="javascript:" onclick="newwin('JF_EditNews.aspx?gid=<%=gid%>&NewsUrl=<%#DataBinder.Eval(Container.DataItem,"Url")%>','EditGetNews','788','600')">编辑</a></TD>
								<TD noWrap width="6"></TD>
								<TD align="center" noWrap>
									<input type="checkbox" name="url" value="<%#DataBinder.Eval(Container.DataItem,"Url")%>">
								</TD>
							</TR>
							<TR>
								<TD colSpan="9" height="1" background="../images/bg_line.gif"></TD>
							</TR>
						</ItemTemplate>
					</asp:repeater>
				</TABLE>
				<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr align="right">
						<td><asp:button class="button80" id="n_input" runat="server" Text="录入新闻"></asp:button>
							全选 <input onclick="CheckAll(this.form)" type="checkbox" name="chkall"></td>
					</tr>
					<TR>
						<TD height="10"></TD>
					</TR>
				</table>
				
			</form>
		</FONT>
	</body>
</HTML>
