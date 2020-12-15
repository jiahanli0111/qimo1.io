<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Page language="c#" Codebehind="JF_Review.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_Review" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>评论管理  </title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top>
				<uc1:Top_Menu id="Top_Menu2" runat="server"></uc1:Top_Menu>
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD></TD>
								</TR>
								<TR>
									<TD border="0"><IMG height="23" src="../images/leftcorner.gif" width="23"></TD>
									<TD vAlign="bottom" align="left" width="100%" background="../images/backheading.gif"
										height="24">评论管理</TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table width="95%" border="0" align="center" cellspacing="0">
					<tr>
						<td width="25%" valign="top">
							<!--
							<table width="100%" border="0" cellspacing="0">
								<tr>
									<td>&nbsp;关键字</td>
									<td>&nbsp;
										<asp:TextBox id="keyword" runat="server"></asp:TextBox></td>
								</tr>
								<tr>
									<td>&nbsp;排序</td>
									<td>&nbsp;
										<asp:DropDownList id="sort" runat="server">
											<asp:ListItem Value="1">时间倒序</asp:ListItem>
											<asp:ListItem Value="2">时间顺序</asp:ListItem>
											<asp:ListItem Value="3">评论数量</asp:ListItem>
										</asp:DropDownList>
										<asp:Button id="r_search" runat="server" Text="检索"></asp:Button></td>
								</tr>
							</table>
							-->
						</td>
						<td>
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
								<TR>
									<TD bgColor="#cccccc" colSpan="7" height="1"></TD>
								</TR>
								<TR class="category_menu">
									<TD width="69%" align="center" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px">新闻标题</TD>
									<TD style="HEIGHT: 18px" vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD noWrap width="15%" background="../images/tableheadingback.gif">最新评论时间</TD>
									<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD noWrap width="8%" background="../images/tableheadingback.gif">评论</TD>
									<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD noWrap width="5%" background="../images/tableheadingback.gif">删除</TD>
								</TR>
								<asp:repeater id="list_news_review" runat="server">
									<ItemTemplate>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word">
												<img src='' width="2"><a href='<%#getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),true)%><%# DataBinder.Eval(Container.DataItem,"DatePath")%>/comment_<%# DataBinder.Eval(Container.DataItem,"FileName")%>_1.<%#getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),false)%>' target="_blank"><%#DataBinder.Eval(Container.DataItem,"Title")%><font color="green">(评论：<%#DataBinder.Eval(Container.DataItem,"ReviewCount")%>)</font></a>
											</TD>
											<TD noWrap width="1%"></TD>
											<TD noWrap width="15%">
												<%#DataBinder.Eval(Container.DataItem,"InputDate","{0:MM-dd HH:mm:ss}")%>
											</TD>
											<TD noWrap width="1%"></TD>
											<TD noWrap width="8%">
												<a href='javascript:' onclick='newwin("JF_ReviewManage.aspx?NewsID=<%#DataBinder.Eval(Container.DataItem,"NewsID")%>","review","700","620")'>评论管理</a>
											</TD>
											<TD noWrap width="1%"></TD>
											<TD noWrap width="5%"><input type="checkbox" name="delid" value='<%#DataBinder.Eval(Container.DataItem,"NewsID")%>'>
										</TR>
									</ItemTemplate>
									<SeparatorTemplate>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="7" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</SeparatorTemplate>
								</asp:repeater>
								<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'">
									<TD background="../images/bg_line.gif" colSpan="7" height="1"></TD>
								</TR>
							</TABLE>
							<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
								<tr vAlign="bottom" align="right">
									<td colSpan="2" height="27">
										<asp:button class="button" id="delall" runat="server" Text="删除评论" CssClass="button80"></asp:button>&nbsp;全选
										<input onclick="CheckAll(this.form)" type="checkbox" name="chkall">
									</td>
								</tr>
								<tr>
									<td width="55%">
										<webdiyer:AspNetPager id="pager" runat="server" PageSize="25" ShowCustomInfoSection="Right" AlwaysShow="True"
											ShowInputBox="Always"></webdiyer:AspNetPager></td>
									<td width="45%"></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
			</form>
		</FONT>
	</body>
</HTML>
