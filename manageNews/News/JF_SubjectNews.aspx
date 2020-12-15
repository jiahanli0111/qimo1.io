<%@ Page CodeBehind="JF_SubjectNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_SubjectNews" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>专题新闻管理</title>
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
				<FONT face="宋体">
					<FIELDSET style="WIDTH: 100%" align="center">
						<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD bgColor="#cccccc" colSpan="5" height="1"></TD>
							</TR>
							<TR class="category_menu">
								<TD width="80%" align="center" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px">标题</TD>
								<TD style="HEIGHT: 18px" vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
								<TD width="13%" noWrap background="../images/tableheadingback.gif">录入时间</TD>
								<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
								<TD noWrap width="5%" background="../images/tableheadingback.gif">删除</TD>
							</TR>
							<asp:repeater id="list_news" runat="server">
								<ItemTemplate>
									<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
										<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word">&nbsp;&nbsp;											
												<font color='<%#DataBinder.Eval(Container.DataItem,"TitleColor")%>'>
													<%#JFCmsEnterprise.inc.FilterString(DataBinder.Eval(Container.DataItem,"Title").ToString(),80,true,"...")%>
												</font><font color="green">(评论：<%#DataBinder.Eval(Container.DataItem,"ReviewCount")%>)</font>
										</TD>
										<TD noWrap width="1%">&nbsp;</TD>
										<TD noWrap>
											<%#DataBinder.Eval(Container.DataItem,"InputDate","{0:yyy日MM月dd日}")%>
										</TD>
										<TD noWrap width="1%"></TD>
										<TD noWrap width="5%">
											<input type="checkbox" name="delid" value='<%# DataBinder.Eval(Container.DataItem,"NewsID")%>'></TD>
									</TR>
								</ItemTemplate>
								<SeparatorTemplate>
									<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
										<TD colSpan="5" height="1" background="../images/bg_line.gif"></TD>
									</TR>
								</SeparatorTemplate>
							</asp:repeater>
							<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'">
								<TD background="../images/bg_line.gif" colSpan="5" height="1"></TD>
							</TR>
						</TABLE>
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr vAlign="bottom" align="right">
								<td colSpan="2" height="41">
									&nbsp;
									<asp:button id="n_exe" runat="server" Text="从专题中删除" CssClass="button" Width="88px" Height="26px"></asp:button>
									全选 <input onclick="CheckAll(this.form)" type="checkbox" name="chkall">
								</td>
							</tr>
							<tr>
								<td width="55%">
									<webdiyer:AspNetPager id="pager" runat="server" PageSize="25" ShowCustomInfoSection="Right" AlwaysShow="True"
										ShowInputBox="Always"></webdiyer:AspNetPager></td>
								<td width="45%"></td>
							</tr>
						</table>
					</FIELDSET>
				</FONT>
			</form>
		</FONT>
	</body>
</HTML>
