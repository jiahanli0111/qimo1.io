<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Page CodeBehind="JF_Index.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_Index" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>��ҳ���� </title>
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
						<TD colSpan="3"><SPAN class="tdtoptitle">�༭��վ��ҳģ��</SPAN></TD>
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
																��ҳģ��ѡ��</TD>
															<TD class="tab-none" align="right">
																<asp:Label id="chkmsg" runat="server" ForeColor="Red"></asp:Label>&nbsp;
																<asp:button id="i_modify" runat="server" CssClass="button" Text="�޸�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" cellSpacing="5" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">ģ������</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="IndexTemplet" runat="server" Width="100%" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onclick="runEx()" type="button" value="ģ��Ԥ��" class="button80">
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��ҳ·�����ļ���</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="IndexPath" runat="server" Width="360px" CssClass="form80"></asp:textbox>
																<asp:CheckBox id="AutoUpdate" runat="server" Text="�Ƿ��Զ�������ҳ"></asp:CheckBox>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">վ������·��:
																			<asp:Label id="d_ip" runat="server" ForeColor="Red"></asp:Label>
																			<br>
																			������ҳʹ��·�����ļ���:
																			<asp:Label id="default_indexpath" runat="server"></asp:Label>
																			<BR>
																			�Ƿ��Զ�������ҳ�����������б䶯ʱ�Զ�������ҳ</td>
																	</tr>
																</table>
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
