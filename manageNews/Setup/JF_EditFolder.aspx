<%@ Page CodeBehind="JF_EditFolder.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_EditFolder" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�༭�ļ������ </title>
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
						<TD colSpan="3"><SPAN class="tdtoptitle">�༭�ļ������</SPAN></TD>
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
																�ļ���ѡ��</TD>
															<TD class="tab-none" align="right">
																<asp:Label id="chkmsg" runat="server" Visible="False"></asp:Label>&nbsp;
																<asp:button id="f_add" runat="server" CssClass="button" Text="���"></asp:button><asp:button id="f_modify" runat="server" CssClass="button" Text="�޸�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" cellSpacing="5" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD colspan="2" vAlign="top" class="td_heading">�������</TD>
														</TR>
														<TR>
															<TD colspan="2" vAlign="top"><asp:textbox id="FolderTitle" runat="server" Width="300px" CssClass="form80"></asp:textbox>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle"><SPAN class="text_note_red">���ͼƬ(����)���ļ�˵�������Ź��ͼƬ(Flash)�����롰���ͼƬ������</SPAN></td>
																	</tr>
																</table>
															</TD>
														</TR>
														<TR>
															<TD width="50%" vAlign="top" class="td_heading">�ļ�������</TD>
															<TD width="50%" vAlign="top" class="td_heading">�ļ���·��</TD>
														</TR>
														<TR>
															<TD vAlign="top">
																<asp:textbox id="FolderName" runat="server" CssClass="form80" Width="300px"></asp:textbox>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle"><SPAN class="text_note_red">�ļ��е�����!�����ʹ������</SPAN></td>
																	</tr>
																</table>
															</TD>
															<TD vAlign="top"><asp:textbox id="FolderPath" runat="server" CssClass="form80" Width="300px"></asp:textbox><BR>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle"><SPAN class="text_note_red">�ļ��������Ӻ󣬽�����Ŀ¼�ﴴ��һ����Ŀ¼ ��������<SPAN class="td_download_title">�ļ���������</SPAN>Ϊ&nbsp;images
																				<SPAN class="td_download_title">�ļ���·��</SPAN>������d:\www&nbsp; 
																				ϵͳ����d:\www����һ����Ϊimages����Ŀ¼&nbsp; c:\www\images&nbsp; </SPAN>
																		</td>
																	</tr>
																</table>
															</TD>
														</TR>
														<TR>
															<TD colspan="2" vAlign="top" class="td_heading">�ļ���WEB��ַ</TD>
														</TR>
														<TR>
															<TD colspan="2" vAlign="top">
																<asp:textbox id="WebUrl" runat="server" CssClass="form80" Width="384px"></asp:textbox>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			�ļ��е���ָ���������Ĭ��Ϊ��ǰ������+�ļ������� �������� �ļ������� Ϊimages<BR>
																			�ļ���WEB·��&nbsp; <a href="http://www.xunt.net/images/">http://www.xunt.net/images/ </a>
																		</td>
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
