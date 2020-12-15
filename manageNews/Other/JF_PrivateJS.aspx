<%@ Page CodeBehind="JF_PrivateJS.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Other.JF_PrivateJS" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>自定义JS管理 </title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
	</HEAD>
	<body leftMargin="0" topMargin="0" onLoad="load();">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<TABLE id="tb_content" cellSpacing="0" cellPadding="10" width="100%" border="0">
					<TBODY>
						<TR>
							<TD class="content" vAlign="top">
								<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
									<TBODY>
										<TR>
											<TD width="15%" class="tab-on" id="navcell" onclick="switchCell(1)" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
												自定义JS列表</TD>
											<TD width="14%" class="tab-off" id="navcell" onclick="switchCell(2)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
												参数设置</TD>
											<TD width="71%" class="tab-none">&nbsp;</TD>
										</TR>
									</TBODY>
								</TABLE>
								<table width="100%" border="0" align="center" cellpadding="0" cellSpacing="1" class="tab-content"
									id="tb">
									<tr>
										<td vAlign="top" width="43%"><asp:panel id="add" Runat="server">
												<TABLE cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
													<TR>
														<TD colSpan="2" height="23"><STRONG>
																<asp:Label id="state" runat="server" Font-Bold="True">增加自定义JS</asp:Label></STRONG></TD>
													</TR>
													<TR bgColor="#cccccc">
														<TD colSpan="2" height="1"></TD>
													</TR>
													<TR>
														<TD width="20%" height="23"><U>JS标题</U></TD>
														<TD width="80%" height="23">
															<asp:TextBox id="JSTitle" runat="server" Width="232px" CssClass="form80" MaxLength="20"></asp:TextBox></TD>
													</TR>
													<TR>
														<TD width="20%" height="23"><U>JS文件名</U></TD>
														<TD width="80%" height="23">
															<asp:TextBox id="JSFileName" runat="server" Width="232px" CssClass="form80" MaxLength="20"></asp:TextBox></TD>
													</TR>
													<TR>
														<TD height="23"><U>JS模板内容</U><BR>
														</TD>
														<TD height="23">
															<asp:TextBox id="JSContent" runat="server" Width="232px" CssClass="form80" Height="110px" TextMode="MultiLine"></asp:TextBox></TD>
													</TR>
													<TR align="center">
														<TD colSpan="2" height="46">
															<asp:Button id="p_modify" runat="server" Width="48px" CssClass="button" Height="23px" Text=" 修 改 "
																Visible="False"></asp:Button>
															<asp:Button id="p_add" runat="server" Width="48px" CssClass="button" Height="23px" Text=" 添 加 "></asp:Button>&nbsp;
															<INPUT class="button" style="WIDTH: 45px; HEIGHT: 23px" type="reset" value=" 重 写 "></TD>
													</TR>
												</TABLE>
											</asp:panel>
											<table cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
												<tr>
													<td colSpan="2" height="23"><strong>获取<font face="宋体">JS</font>调用代码</strong></td>
												</tr>
												<tr bgColor="#cccccc">
													<td colSpan="2" height="1"></td>
												</tr>
												<tr>
													<td width="16%" height="23"><u>JS标题</u><br>
													</td>
													<td width="84%" height="23"><asp:dropdownlist id="CodeJSTitle" runat="server"></asp:dropdownlist></td>
												</tr>
												<tr>
													<td height="23"><u>JS代码</u><br>
													</td>
													<td height="23">
														<asp:TextBox id="RemoteCode" runat="server" Width="248px" CssClass="form80" Height="110px" TextMode="MultiLine"></asp:TextBox>
													</td>
												</tr>
												<tr align="center">
													<td colSpan="2" height="23">&nbsp;
													</td>
												</tr>
											</table>
										</td>
										<td vAlign="top" width="57%">
											<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
												<TR>
													<TD colSpan="8" height="8"></TD>
												</TR>
												<TR bgColor="#808080">
													<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
												</TR>
												<TR class="category_menu">
													<TD noWrap width="10%" background="../images/tableheadingback.gif"><img height="0" src="" width="5">ID</TD>
													<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
													<TD width="65%" noWrap background="../images/tableheadingback.gif">标题</TD>
													<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
													<TD noWrap width="11%" background="../images/tableheadingback.gif">增加时间</TD>
													<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
													<TD noWrap width="7%" background="../images/tableheadingback.gif">修改</TD>
													<TD width="4%" vAlign="top" noWrap background="../images/tableheadingback.gif">&nbsp;</TD>
												</TR>
												<asp:repeater id="list_privatejs" runat="server">
													<ItemTemplate>
														<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
															onMouseOut="this.style.backgroundColor='#FFFFFF'">
															<TD noWrap width="10%"><img src="" width="5" height="0">
																<%#DataBinder.Eval(Container.DataItem,"pid")%>
															</TD>
															<TD noWrap width="1%"></TD>
															<TD noWrap>
																<%#DataBinder.Eval(Container.DataItem,"JSTitle")%>
															</TD>
															<TD noWrap width="1%"></TD>
															<TD noWrap>
																<%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd}")%>
															</TD>
															<TD noWrap width="1%"></TD>
															<TD noWrap><a href='?action=modify&pid=<%# DataBinder.Eval(Container.DataItem,"pid")%>'>修改</a></TD>
															<TD noWrap><input type="checkbox" name="delid" value='<%# DataBinder.Eval(Container.DataItem,"pid")%>'></TD>
														</TR>
														<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
															<TD colSpan="8" height="1" background="../images/bg_line.gif"></TD>
														</TR>
													</ItemTemplate>
													<FooterTemplate>
													</FooterTemplate>
												</asp:repeater>
												<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'"
													align="right">
													<TD colSpan="8"><INPUT type="radio" value="del" name="exe" title='删除自定义JS'>删除 <INPUT type="radio" value="update" name="exe" title='更新自定义JS'>更新
														<asp:button CssClass="button" id="p_exe" runat="server" Text="执行"></asp:button>
														全选<input onClick="CheckAll(this.form)" type="checkbox" name="chkall"></TD>
												</TR>
											</TABLE>
											<table cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
												<tr>
													<td><webdiyer:aspnetpager id="pager" runat="server" Width="128px" AlwaysShow="True" ShowCustomInfoSection="Right"
															PageSize="40"></webdiyer:aspnetpager></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								<table class="tab-content" id="tb" width="100%" border="0" align="center" cellPadding="0"
									cellSpacing="1" bgColor="#ffffff">
									<tr>
										<td colSpan="2" height="23"><strong>自定义JS参数设置</strong></td>
									</tr>
									<tr bgColor="#cccccc">
										<td colSpan="2" height="1"></td>
									</tr>
									<tr>
										<td width="16%" height="23"><U>文件夹路径</U><br>
										</td>
										<td width="84%" height="23"><asp:TextBox id="PrivateJSDirPath" runat="server" CssClass="form80" Width="320px"></asp:TextBox><BR>
											<asp:Label id="ExamplesDirPath" runat="server"></asp:Label></td>
									</tr>
									<tr>
										<td height="23"><U>文件夹WEB地址</U><br>
										</td>
										<td height="23"><asp:TextBox id="PrivateJSWebUrl" runat="server" CssClass="form80" Width="320px"></asp:TextBox><BR>
											<asp:Label id="ExamplesWebUrl" runat="server"></asp:Label>
										</td>
									</tr>
									<tr align="center">
										<td colSpan="2" height="23" align="right">
											<asp:Button id="p_btn_setup" runat="server" CssClass="button" Width="48px" Height="23px" Text=" 提 交 "></asp:Button>&nbsp;</td>
									</tr>
								</table>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</form>
		</FONT>
	</body>
</HTML>
