<%@ Page CodeBehind="JF_UploadFile.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_UploadFile" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�ļ��ϴ� </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body leftMargin="0" topMargin="0" onload="setid()">
		<FONT face="����">
			<form id="Form1" method="post" encType="multipart/form-data" runat="server">
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">�ļ��ϴ�</SPAN></TD>
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
								<TABLE id="tb_content" cellSpacing="0" cellPadding="10" width="100%" align="center" border="0">
									<TBODY>
										<TR>
											<TD class="content" vAlign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="tab-on" id="navcell" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
																�ļ��ϴ�ѡ��</TD>
															<TD class="tab-none" align="right">
																<asp:Label id="chkmsg" runat="server" Visible="False"></asp:Label>&nbsp;<asp:button id="f_upfile" runat="server" CssClass="button" Text="�ϴ�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ">&nbsp;<INPUT class="button" type="button" onclick="window.close()" value="�ر�"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" cellSpacing="5" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR id="tr_currentpath">
															<TD id="td_txt" width="44%" vAlign="top" class="td_heading">�ļ��ϴ�����</TD>
															<TD width="56%" vAlign="top" class="td_heading">��ǰĿ¼</TD>
														</TR>
														<TR id="tr_currentpath1">
															<TD id="td_input" vAlign="top">
																<asp:TextBox id="upcount" runat="server" Width="64px">9</asp:TextBox>
																<input type="button" name="Button" onClick="setid();" value="�趨">
															</TD>
															<TD vAlign="top">
																<asp:dropdownlist id="FolderID" runat="server"></asp:dropdownlist></TD>
														</TR>
														<TR id="tr_thumb1">
															<TD colspan="2" vAlign="top" class="td_heading">��������ͼ</TD>
														</TR>
														<TR id="tr_thumb2">
															<TD colspan="2" vAlign="top">
																<asp:CheckBox id="CreateSmallImg" runat="server" Text="��������ͼ"></asp:CheckBox> <asp:CheckBox id="NotReName" runat="server" Text="����ԭ�ļ���"></asp:CheckBox>
																<div id="CreateImg" style="DISPLAY:none">
																	��
																	<asp:TextBox id="ThumbWidth" runat="server" CssClass="form80" Width="40px"></asp:TextBox>&nbsp;��
																	<asp:TextBox id="ThumbHeight" runat="server" CssClass="form80" Width="40px"></asp:TextBox>&nbsp;����д���� 
																	�� 120 90
																</div>
															</TD>
														</TR>
														<TR>
															<TD colspan="2" vAlign="top" class="td_heading">ѡ���ļ�</TD>
														</TR>
														<TR>
															<TD colspan="2" vAlign="top" id="upid">
																<input type="file" name="file1">
															</TD>
														</TR>
														<%=script%>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</form>
		</FONT>
	</body>
</HTML>
