<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Page language="c#" Codebehind="JF_ReviewManage.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_ReviewManage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>���۹��� </title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<table width="99%" border="0" align="center" cellspacing="0">
					<tr>
						<td>
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
								<TR>
									<TD bgColor="#cccccc" colSpan="9" height="1"></TD>
								</TR>
								<TR class="category_menu">
									<TD width="15%" align="center" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px">����</TD>
									<TD style="HEIGHT: 18px" vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD style="HEIGHT: 18px" vAlign="top" noWrap width="42%" background="../images/tableheadingback.gif">��������</TD>
									<TD style="HEIGHT: 18px" vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD width="19%" vAlign="top" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px">����ʱ��</TD>
									<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD noWrap width="16%" background="../images/tableheadingback.gif">IP</TD>
									<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
									<TD noWrap width="4%" background="../images/tableheadingback.gif">ɾ��</TD>
								</TR>
								<asp:repeater id="list_news_review" runat="server">
									<ItemTemplate>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word">
												<img src='' width="2"><%#DataBinder.Eval(Container.DataItem,"ReviewName")%>
											</TD>
											<TD noWrap></TD>
											<TD noWrap><%#DataBinder.Eval(Container.DataItem,"ReviewContent")%></TD>
											<TD noWrap></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"InputDate","{0:yyyy-MM-dd HH:mm:ss}")%>
											</TD>
											<TD noWrap width="1%"></TD>
											<TD noWrap width="16%">
												<%#DataBinder.Eval(Container.DataItem,"FromIP")%>
											</TD>
											<TD noWrap width="1%"></TD>
											<TD noWrap width="4%"><input type="checkbox" name="delid" value='<%#DataBinder.Eval(Container.DataItem,"ReviewID")%>'>
										</TR>
									</ItemTemplate>
									<SeparatorTemplate>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="9" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</SeparatorTemplate>
								</asp:repeater>
								<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'">
									<TD background="../images/bg_line.gif" colSpan="9" height="1"></TD>
								</TR>
							</TABLE>
							<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
								<tr vAlign="bottom" align="right">
									<td colSpan="2" height="27">
										<asp:button class="button" id="delall" runat="server" Text="ɾ��"></asp:button>&nbsp;ȫѡ
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
