<%@ Page CodeBehind="JF_LogManage.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_LogManage" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
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
										height="24"><SPAN class="tdtoptitle">系统登录日志</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table cellSpacing="0" width="95%" align="center" border="0">
					<tr>
						<td vAlign="top" align="center" width="30%">
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="84%" border="0">
								<TR>
									<TD colSpan="2" height="8"></TD>
								</TR>
								<TR>
									<TD colSpan="8" height="1">用户登录日志</TD>
								</TR>
								<TR bgColor="#808080">
									<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
								</TR>
								<TR>
									<TD colSpan="8" height="10"></TD>
								</TR>
								<TR class="category_menu">
									<TD noWrap>请选择用户:
										<asp:DropDownList id="list_user" runat="server"></asp:DropDownList>
									</TD>
									<TD noWrap>
										<asp:Button id="l_sel" runat="server" Text="确定"></asp:Button></TD>
								</TR>
							</TABLE>
						</td>
						<td vAlign="top" width="70%">
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<asp:Repeater id="list_log" runat="server">
									<ItemTemplate>
										<TR class="category_menu">
											<TD width="12%"><%#DataBinder.Eval(Container.DataItem,"UserName")%></TD>
											<TD width="13%"><%#DataBinder.Eval(Container.DataItem,"LoginIP")%></TD>
											<TD width="13%"><%#DataBinder.Eval(Container.DataItem,"OS")%></TD>
											<TD width="9%"><%#(bool)DataBinder.Eval(Container.DataItem,"IsError")?"<font color=red>失败</font>":"<font color=green>成功</font>"%></TD>
											<TD width="10%"><img src="" width="10" height="0"><%#DataBinder.Eval(Container.DataItem,"ErrorPwd")%></TD>
											<TD width="30%"><%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyy日MM月dd日 HH时:mm分:ss秒}")%></TD>
											<TD width="13%"><input type='checkbox' name='delid' value='<%#DataBinder.Eval(Container.DataItem,"LID")%>'></TD>
										</TR>
										<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="8" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</ItemTemplate>
								</asp:Repeater></TABLE>
							<table cellSpacing="0" cellPadding="0" width="100%" border="0">
								<tr>
									<td align="right" width="96%">
										<asp:button CssClass="button" id="l_delall" runat="server" Text="删除全部日志" Width="81px" Height="25px"></asp:button>&nbsp;<asp:button CssClass="button" id="l_del" runat="server" Text=" 删 除 " Width="48px" Height="25px"></asp:button>&nbsp;全选
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
