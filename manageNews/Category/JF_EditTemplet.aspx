<%@ Page CodeBehind="JF_EditTemplet.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Category.JF_EditTemplet" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�༭ģ�� </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">�༭ģ��</SPAN></TD>
					</TR>
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
					</TR>
				</TABLE>
				<TABLE height="22" cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TBODY>
						<TR>
							<TD vAlign="top">
								<TABLE id="tb_content" cellSpacing="0" cellPadding="10" width="90%" align="center" border="0">
									<TBODY>
										<TR>
											<TD class="content" vAlign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="tab-on" id="navcell" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
																����ģ��ѡ��</TD>
															<TD class="tab-none" align="right">&nbsp;
																<asp:button id="t_add" runat="server" CssClass="button" Text="���"></asp:button><asp:button id="t_modify" runat="server" CssClass="button" Text="�޸�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" cellSpacing="5" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">ģ�����</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="Title" runat="server" Width="300px" CssClass="form80"></asp:textbox>
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">ģ������</TD>
														</TR>
														<TR>
															<TD vAlign="top">
																<asp:DropDownList id="TempletType" runat="server">
																	<asp:ListItem Value="��Ŀ��ҳģ��">��Ŀ��ҳģ��</asp:ListItem>
																	<asp:ListItem Value="��Ŀ��ҳģ��">��Ŀ��ҳģ��</asp:ListItem>
																	<asp:ListItem Value="����ģ��" Selected="True">����ģ��</asp:ListItem>
																</asp:DropDownList>
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">ģ������</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="Templet" runat="server" Width="100%" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onclick="runEx()" type="button" value="ģ��Ԥ��" class="button80">
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">ģ�屸ע</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="Remark" runat="server" Width="100%" TextMode="MultiLine" Height="126px"></asp:textbox>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
							<TD class="sidebar" vAlign="top">&nbsp;
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				</form>
		</FONT>
	</body>
</HTML>
