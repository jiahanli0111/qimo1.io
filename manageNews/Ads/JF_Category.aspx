<%@ Page CodeBehind="JF_Category.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_Category" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>广告类别管理 </title>
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
				<table width="95%" border="0" align="center" cellspacing="0">
					<tr>
						<td width="43%" valign="top">
							<TABLE cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
								<TR>
									<TD colSpan="2" height="23"><asp:Label ID="Title" Runat="server" Font-Bold="True">增加类别</asp:Label></TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="2" height="1"></TD>
								</TR>
								<TR>
									<TD colSpan="2" height="10"></TD>
								</TR>
								<TR>
									<TD width="34%" height="23"><U>类别名</U></TD>
									<TD width="66%" height="23">
										<asp:TextBox id="CategoryName" runat="server" CssClass="form80" MaxLength="45"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD height="23"><U>框架高、宽</U></TD>
									<TD height="23">高:
										<asp:TextBox id="Height" runat="server" Width="40px" CssClass="form80" MaxLength="5">80</asp:TextBox>
										宽:
										<asp:TextBox id="Width" runat="server" Width="40px" CssClass="form80" MaxLength="5">468</asp:TextBox></TD>
								</TR>
								<TR>
									<TD height="23"><U>备注</U><BR>
									</TD>
									<TD height="23">
										<asp:TextBox id="Remark" runat="server" Width="200px" CssClass="form80" Height="88px" TextMode="MultiLine"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD colSpan="2" height="10"></TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="2" height="1"></TD>
								</TR>
								
								<TR align="center">
									<TD colSpan="2" height="46">
										<asp:Button id="a_modify" runat="server" Width="48px" Text=" 修 改 " CssClass="button" Height="23px"
											Visible="False"></asp:Button>
										<asp:Button id="a_add" runat="server" Height="23px" CssClass="button" Text=" 添 加 " Width="48px"></asp:Button>&nbsp;
										<INPUT class="button" style="WIDTH: 45px; HEIGHT: 23px" type="reset" value=" 重 写 "></TD>
								</TR>
							</TABLE>
						</td>
						<td width="57%" valign="top">
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
								<TR>
									<TD colSpan="9" height="8"></TD>
								</TR>
								<TR bgColor="#808080">
									<TD bgColor="#cccccc" colSpan="9" height="1"></TD>
								</TR>
								<TR class="category_menu">
									<TD noWrap width="53" background="../images/tableheadingback.gif"><img src="" width="5" height="0">ID</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD noWrap background="../images/tableheadingback.gif">标题</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="66" noWrap background="../images/tableheadingback.gif">增加时间</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="33" noWrap background="../images/tableheadingback.gif">修改</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="35" noWrap background="../images/tableheadingback.gif">删除</TD>
								</TR>
								<asp:repeater id="list_vote" runat="server">
									<ItemTemplate>
										<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
											onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD noWrap width="53"><img src="" width="5" height="0">
												<%#DataBinder.Eval(Container.DataItem,"AdsCategoryID")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"CategoryName")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd}")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='?action=modify&AdsCategoryID=<%# DataBinder.Eval(Container.DataItem,"AdsCategoryID")%>'>修改</a></TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='?action=del&AdsCategoryID=<%# DataBinder.Eval(Container.DataItem,"AdsCategoryID")%>' onclick="return Del()">删除</a></TD>
										</TR>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="9" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</ItemTemplate>
								</asp:repeater>
							</TABLE>
							<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<webdiyer:AspNetPager id="pager" runat="server" PageSize="40" ShowCustomInfoSection="Right" Width="128px"
											AlwaysShow="True"></webdiyer:AspNetPager>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</form>
		</FONT>
	</body>
</HTML>
