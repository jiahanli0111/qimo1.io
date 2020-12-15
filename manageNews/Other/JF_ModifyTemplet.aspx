<%@ Page CodeBehind="JF_ModifyTemplet.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Other.JF_ModifyTemplet" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
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
		<script language="javascript" src="../include/js/date.js" charset="gb2312"></script>
		<style type="text/css">.style2 { FONT-WEIGHT: bold; COLOR: #ffffff }
		</style>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD>
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD border="0">&nbsp;</TD>
									<TD vAlign="bottom" align="left" width="100%"><SPAN class="tdtoptitle">修改模板</SPAN></TD>
									<TD>&nbsp;</TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="3" height="1" border="0"></TD>
								</TR>
								<TR>
									<TD colSpan="3" height="6" border="0"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table id="Table1" cellSpacing="0" width="95%" align="center" border="0">
					<tr>
						<td vAlign="top" align="center">
							<table id="Table2" style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px" borderColor="#f7f7f7"
								cellSpacing="0" cellPadding="0" width="500" align="left" border="1">
								<tr align="center">
									<td vAlign="middle" align="right" height="33" rowSpan="2">修改内容:</td>
									<td vAlign="middle" align="center" width="71"><u>查找内容</u></td>
									<td vAlign="middle" align="left" width="322"><asp:checkbox id="all" runat="server" Text="所有内容" AutoPostBack="True"></asp:checkbox><br>
										<font color="#cccccc">匹配所有字符,替换模板所有内容</font>
										<asp:textbox id="souText" runat="server" TextMode="MultiLine" Width="330px" Height="136px"></asp:textbox></td>
								</tr>
								<tr align="center">
									<td vAlign="middle" align="center"><u>替换成为</u></td>
									<td vAlign="middle" align="left"><asp:textbox id="objText" runat="server" TextMode="MultiLine" Width="330px" Height="136px"></asp:textbox></td>
								</tr>
								<tr align="center">
									<td vAlign="middle" align="right" width="99" height="33"><u>修改模板类型</u></td>
									<td vAlign="middle" align="left" colSpan="2"><asp:dropdownlist id="TempletType" runat="server">
											<asp:ListItem Value="CategoryIndexTemplet">栏目首页模板</asp:ListItem>
											<asp:ListItem Value="CategorySubPageTemplet">栏目分页模板</asp:ListItem>
											<asp:ListItem Value="NewsTemplet" Selected="True">栏目新闻模板</asp:ListItem>
											<asp:ListItem Value="OhterTemplet">自建模板</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr align="center">
									<td height="33" align="right" valign="middle">&nbsp;<U>指定栏目</U></td>
									<td colspan="2" align="left" valign="middle">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<asp:Repeater id="list_category" runat="server">
												<ItemTemplate>
													<tr>
														<td width="10"></td>
														<td width="20" align="center">
															<input type="checkbox" name="CategoryID" value='<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>'>
														</td>
														<td width="605">
															<%# JFCmsEnterprise.inc.list_category_space(DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%>
															<%# JFCmsEnterprise.inc.list_category_first(DataBinder.Eval(Container.DataItem,"CategoryName").ToString(),DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%>
														</td>
													</tr>
													<TR>
														<TD colSpan="3" height="1" background="../images/bg_line.gif"></TD>
													</TR>
												</ItemTemplate>
												<FooterTemplate>
													<tr>
														<td width="10"></td>
														<td width="20" align="center">
															<input type="checkbox" name="chkall" onclick="CheckAll(this.form)">
														</td>
														<td width="605">
															<font color="green"><b>选中所有</b></font>
														</td>
													</tr>
													<TR>
														<TD colSpan="3" height="1" background="../images/bg_line.gif"></TD>
													</TR>
												</FooterTemplate>
											</asp:Repeater>
										</table>
									</td>
								</tr>
								<tr align="center">
									<td height="33" colspan="3" valign="middle">
										<asp:Button id="t_submit" runat="server" Width="62px" Height="25px" Text="修改模板" CssClass="Button"></asp:Button>&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center" vAlign="top">&nbsp;</td>
					</tr>
				</table>
			</form>
		</FONT>
	</body>
</HTML>
