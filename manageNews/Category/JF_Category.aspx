<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Page language="c#" Codebehind="JF_Category.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.JF_Category" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>栏目管理 </title>
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
										height="24"><SPAN class="tdtoptitle">栏目管理</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="80%" align="center" border="0">
					<TR>
						<TD colSpan="13" height="8"></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="13" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD noWrap width="44" background="../images/tableheadingback.gif">ID</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="233" noWrap background="../images/tableheadingback.gif">栏目名称</TD>
						<TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="133" noWrap background="../images/tableheadingback.gif">目录名</TD>
						<TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="143" noWrap background="../images/tableheadingback.gif">栏目属性</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="91" noWrap background="../images/tableheadingback.gif">增加时间</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="59" noWrap background="../images/tableheadingback.gif">修改栏目</TD>
						<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
						<TD width="57" noWrap background="../images/tableheadingback.gif">删除栏目</TD>
					</TR>
					<asp:repeater id="list_category" runat="server">
						<ItemTemplate>
							<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
								onMouseOut="this.style.backgroundColor='#FFFFFF'">
								<TD noWrap width="44"><%#DataBinder.Eval(Container.DataItem,"CategoryID")%></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><%# JFCmsEnterprise.inc.list_category_space(DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%><%# JFCmsEnterprise.inc.list_category_first(DataBinder.Eval(Container.DataItem,"CategoryName").ToString(),DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%></TD>
								<TD noWrap>&nbsp;</TD>
								<TD noWrap><%#DataBinder.Eval(Container.DataItem,"CategoryPath")%></TD>
								<TD noWrap>&nbsp;</TD>
								<TD noWrap><%#(bool)DataBinder.Eval(Container.DataItem,"AutoUpdate")?"自动更新栏目首页":""%></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><%#DataBinder.Eval(Container.DataItem,"CategoryDate","{0:yyyy/MM/dd  HH:mm}")%></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><a href='JF_EditCategory.aspx?action=md&CategoryID=<%# DataBinder.Eval(Container.DataItem,"CategoryID")%>&CategoryParent=<%# DataBinder.Eval(Container.DataItem,"CategoryParent")%>&SubCategoryCount=<%# DataBinder.Eval(Container.DataItem,"SubCategoryCount")%>'>修改</a></TD>
								<TD noWrap width="6"></TD>
								<TD noWrap><%# JFCmsEnterprise.inc.del_category(DataBinder.Eval(Container.DataItem,"SubCategoryCount").ToString(),DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),DataBinder.Eval(Container.DataItem,"CategoryParent").ToString())%></TD>
							</TR>
							<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
								<TD colSpan="13" height="1" background="../images/bg_line.gif"></TD>
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
