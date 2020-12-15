<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Page CodeBehind="JF_UrlManage.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_UrlManage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>责任编辑 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
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
										height="24"><SPAN class="tdtoptitle">责任编辑</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table cellSpacing="0" width="95%" align="center" border="0">
					<tr>
						<td vAlign="top" align="center" width="39%"><asp:panel id="ep_add" Runat="server">
								<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="84%" border="0">
									<TR>
										<TD colSpan="2" height="8"></TD>
									</TR>
									<TR>
										<TD colSpan="8" height="1">增加相关连接</TD>
									</TR>
									<TR bgColor="#808080">
										<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
									</TR>
									<TR>
										<TD colSpan="8" height="10"></TD>
									</TR>
									<TR class="category_menu">
										<TD noWrap>连接名称:
										</TD>
										<TD noWrap>
											<asp:TextBox id="UrlName" runat="server"></asp:TextBox></TD>
									</TR>
									<TR class="category_menu">
										<TD noWrap>连接地址:
										</TD>
										<TD noWrap>
											<asp:TextBox id="UrlPath" runat="server">http://</asp:TextBox>
											<asp:Button id="u_add" runat="server" Text="添加"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:panel><asp:panel id="ep_modify" Runat="server" Visible="False">
								<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="84%" border="0">
									<TR>
										<TD colSpan="2" height="8"></TD>
									</TR>
									<TR>
										<TD colSpan="8" height="1">修改相关连接</TD>
									</TR>
									<TR bgColor="#808080">
										<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
									</TR>
									<TR>
										<TD colSpan="8" height="10"></TD>
									</TR>
									<TR class="category_menu">
										<TD noWrap>连接名称:
										</TD>
										<TD noWrap>
											<asp:TextBox id="u_UrlName" runat="server"></asp:TextBox></TD>
									</TR>
									<TR class="category_menu">
										<TD noWrap>连接地址:
										</TD>
										<TD noWrap>
											<asp:TextBox id="u_UrlPath" runat="server"></asp:TextBox>
											<asp:Button id="u_modify" runat="server" Text="修改"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:panel></td>
						<td vAlign="top" width="61%">
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="84%" border="0">
								<TR>
									<TD colSpan="8" height="8"></TD>
								</TR>
								<TR bgColor="#808080">
									<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
								</TR>
								<TR class="category_menu">
									<TD noWrap width="53" background="../images/tableheadingback.gif"><img height="0" src="" width="5">ID</TD>
									<TD vAlign="top" noWrap width="6" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD noWrap width="214" background="../images/tableheadingback.gif">连接名称</TD>
									<TD vAlign="top" noWrap width="6" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD noWrap width="141" background="../images/tableheadingback.gif">增加时间</TD>
									<TD vAlign="top" noWrap width="6" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD noWrap background="../images/tableheadingback.gif" colSpan="2">操作</TD>
								</TR>
								<asp:repeater id="list_editor" runat="server">
									<ItemTemplate>
										<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'"
											bgcolor="#FFFFFF">
											<TD noWrap width="53"><IMG height="0" src="" width="5">&nbsp;<%#DataBinder.Eval(Container.DataItem,"UrlID")%></TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='<%#DataBinder.Eval(Container.DataItem,"UrlPath")%>' target='_blank'><%#DataBinder.Eval(Container.DataItem,"UrlName")%></a></TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd  HH:mm}")%></TD>
											<TD noWrap width="6"></TD>
											<TD width="28" noWrap><a href='JF_UrlManage.aspx?action=md&UrlID=<%#DataBinder.Eval(Container.DataItem,"UrlID")%>&page=<%=Request.QueryString["page"]%>'>修改</a></TD>
											<TD width="20" noWrap><input type='checkbox' name='delid' value='<%#DataBinder.Eval(Container.DataItem,"UrlID")%>'></TD>
										</TR>
										<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="8" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</ItemTemplate>
								</asp:repeater></TABLE>
							<table cellSpacing="0" cellPadding="0" width="84%" border="0">
								<tr>
									<td align="right" width="96%"><asp:button CssClass="button" id="u_del" runat="server" Text="删除"></asp:button>全选
									</td>
									<td align="center" width="4%"><input onclick="CheckAll(this.form)" type="checkbox" name="chkall"></td>
								</tr>
								<tr>
									<td colSpan="2"><webdiyer:aspnetpager id="pager" runat="server" Width="128px" ShowCustomInfoSection="Right" PageSize="40"
											AlwaysShow="True"></webdiyer:aspnetpager></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
</form>
		</FONT>
	</body>
</HTML>
