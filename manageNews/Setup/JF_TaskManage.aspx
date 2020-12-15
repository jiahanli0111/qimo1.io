<%@ Page CodeBehind="JF_TaskManage.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_TaskManage" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>任务管理 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
		<script language="javascript" charset="gb2312" src="../include/js/date.js"></script>
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
										height="24"><span class="tdtoptitle">任务管理</span></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table cellSpacing="0" width="95%" align="center" border="0">
					<tr>
						<td align="center" vAlign="top"><TABLE id="Table6" cellSpacing="0" cellPadding="0" width="84%" border="0">
								<TR>
									<TD colSpan="8" height="8"></TD>
								</TR>
								<TR bgColor="#808080">
									<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
								</TR>
								<TR class="category_menu">
									<TD width="318" noWrap background="../images/tableheadingback.gif"><img height="0" src="" width="5">任务属性</TD>
									<TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="327" noWrap background="../images/tableheadingback.gif">执行栏目</TD>
									<TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="81" noWrap background="../images/tableheadingback.gif">执行时间</TD>
									<TD vAlign="top" noWrap width="6" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD noWrap background="../images/tableheadingback.gif" colSpan="2">操作</TD>
								</TR>
								<asp:repeater id="list_task" runat="server">
									<ItemTemplate>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'"
											bgcolor="#FFFFFF">
											<TD noWrap><IMG height="0" src="" width="5">更新《<%#e2z(DataBinder.Eval(Container.DataItem,"TaskType").ToString())%>》</TD>
											<TD noWrap>&nbsp;</TD>
											<TD noWrap><%#id2name(DataBinder.Eval(Container.DataItem,"TaskCategoryID").ToString())%></TD>
											<TD noWrap>&nbsp;</TD>
											<TD noWrap>每天<%#DataBinder.Eval(Container.DataItem,"TaskTime")%>时</TD>
											<TD noWrap width="6"></TD>
											<TD width="25" noWrap><a href='JF_EditTask.aspx?tid=<%#DataBinder.Eval(Container.DataItem,"Tid")%>'>修改</a></TD>
											<TD width="23" noWrap><input type='checkbox' name='delid' value='<%#DataBinder.Eval(Container.DataItem,"tid")%>'></TD>
										</TR>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="8" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</ItemTemplate>
								</asp:repeater>
							</TABLE>
							<table cellSpacing="0" cellPadding="0" width="84%" border="0">
								<tr>
									<td align="right" width="96%"><asp:button CssClass="button" id="btn_TaskDel" runat="server" Text="删除"></asp:button>
										全选
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
