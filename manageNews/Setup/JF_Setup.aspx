<%@ Page CodeBehind="JF_Setup.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_Setup" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�������� </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">.style2 { COLOR: #ff0000 }
		</style>
	</HEAD>
	<body leftMargin="0" topMargin="0" onload="load();">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">��������</SPAN></TD>
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
															<TD class="tab-on" id="navcell" onclick="switchCell(1)" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
																��������</TD>
															<TD class="tab-off" id="navcell" onclick="switchCell(2)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
																&nbsp;����ģ��</TD>
															<TD class="tab-off" id="navcell" onclick="switchCell(3)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
																&nbsp;����ҳ����ģ��</TD>
															<TD class="tab-none" align="right">
																<asp:button id="btn_StopFullTxt" runat="server" Text="ɾ��ȫ������" CssClass="button" Width="80px"></asp:button>
																<asp:button id="btn_StartFullTxt" runat="server" Text="����ȫ������" CssClass="button" Width="80px"></asp:button>&nbsp;<asp:button id="s_modify" runat="server" CssClass="button" Text="�޸�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<table class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<tbody>
														<tr>
															<td class="td_heading" vAlign="top" colSpan="4">ϵͳ��������</td>
														</tr>
														<tr>
															<td width="119" vAlign="top"><u>��������:</u></td>
															<td vAlign="top">
																<asp:textbox id="YourDomain" runat="server" MaxLength="30" CssClass="form80" Width="216px"></asp:textbox></td>
															<td vAlign="top"><u><span class="style2">ע���:</span></u></td>
															<td vAlign="top"><asp:textbox id="RegisterNO" runat="server" MaxLength="30" CssClass="form80" Width="216px"></asp:textbox></td>
														</tr>
														<tr>
															<td vAlign="top"><u><U>�ϴ��ļ���С</U></u></td>
															<td vAlign="top" width="229"><asp:textbox id="FileSize" runat="server" MaxLength="30" CssClass="form80"></asp:textbox>
																<br>
																<table cellSpacing="0" width="98%" border="0">
																	<tr>
																		<td class="tdtoptitle">�����ϴ����ļ���С����λΪ��KB��</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top" width="82"><u><U>�ϴ��ļ�����</U></u></td>
															<td vAlign="top" width="282"><asp:textbox id="FileType" runat="server" CssClass="form80" Width="208px"></asp:textbox>
																<br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">����д��չ���ԡ�,������</td>
																	</tr>
																</table>
															</td>
														</tr>
														<!--
														<tr>
															<td vAlign="top" width="104">
																<p><u><U>ÿҳ��������</U></u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="PageWordCount" runat="server" Width="329px" CssClass="form80"></asp:textbox><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			<span class="text_note_red">�Զ����������������Ž��з�ҳ </span>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														-->
														<tr>
															<td vAlign="top">
																<u>ͼƬ���ű�־:</u>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="PhotoNews" runat="server" ForeColor="Red" Width="336px" CssClass="form80"></asp:textbox><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">��ʾ�����ŵı�����棬֧��HTML
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>���۹����ַ�:</u>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="FiltrationWord" runat="server" Width="336px" CssClass="form80"></asp:textbox><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			����ַ�����&nbsp;��,�� ����
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>�ļ�����:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:dropdownlist id="CharSet" runat="server">
																	<asp:ListItem Value="gb2312" Selected="True">��������(gb2312)</asp:ListItem>
																	<asp:ListItem Value="big5">��������(big5)</asp:ListItem>
																	<asp:ListItem Value="utf-8">Unicode(utf-8)</asp:ListItem>
																</asp:dropdownlist>
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">ϵͳ�������ŵı��뷽ʽ��һ������½�����ѡ��gb2312����!</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>�������ʱ��:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:TextBox id="SearchTime" runat="server" CssClass="form80" MaxLength="5" Width="56px"></asp:TextBox>��
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">��ֹ�������������������ķ�������Դ! ��������60��</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>����ȫ�ļ���:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:dropdownlist id="SearchFullTxt" runat="server">
																	<asp:ListItem Value="true" Selected="True">����</asp:ListItem>
																	<asp:ListItem Value="false">����</asp:ListItem>
																</asp:dropdownlist>
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">����ȫ�ļ�������������������ٶȣ�����ȫ�ļ���ʱϵͳ�Զ���ȡ��ͨ������ʽ</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>Զ��ͼƬ����ͼ��:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:dropdownlist id="SaveFid" runat="server"></asp:dropdownlist>
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">��ѡ������ͼ����Ϊ����Զ��ͼƬ��Ŀ¼������Ҫ����Զ��ͼƬ����ѡ�񡰲����桱</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td height="38" vAlign="top"><u>ͼƬˮӡ:</u>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:RadioButton id="WordWatermark" runat="server" Text="����ˮӡ" GroupName="watermark"></asp:RadioButton>
																<asp:RadioButton id="ImgWatermark" runat="server" Text="ͼƬˮӡ" GroupName="watermark" Checked="True"></asp:RadioButton>
																<asp:RadioButton id="NotWate" runat="server" Text="����ˮӡ" GroupName="watermark"></asp:RadioButton>
																<table width="100%" border="0" cellspacing="0" cellpadding="0">
																	<TBODY>
																		<tr>
																			<td bgcolor="#cccccc"></td>
																		</tr>
																		<tr id="tr_WordWatermark" style="DISPLAY:none">
																			<td>
																				����ͼƬˮӡ�����֣�
																				<asp:TextBox id="WatermarkWord" runat="server" CssClass="form80" MaxLength="30"></asp:TextBox></td>
																		</tr>
																		<tr id="tr_ImgWatermark">
																			<td><img src='../images/watermark/watermark.gif'><a style="CURSOR: hand" onclick='newwin("../setup/JF_UpLoadFile.aspx?otype=watermark","u","400","180")'>�ϴ�ˮӡ�ļ�</a></td>
																		</tr>
																		<%=script%>
																	</TBODY>
																</table>
															</td>
														</tr>
													</tbody>
												</table>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">����ģ��</TD>
														</TR>
														<TR>
															<TD vAlign="top"><font color="#c0c0c0">
																	<asp:textbox id="ReviewTemplet" runat="server" Width="100%" TextMode="MultiLine" Height="476px"></asp:textbox><INPUT class="button80" onclick="runEx()" type="button" value="ģ��Ԥ��" name="Button">
																</font>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">����ҳ������ģ��<BR>
																<font color='red'>��ģ����Ҫ����������ҳ������ʾ���µ�����</font></TD>
														</TR>
														<TR>
															<TD vAlign="top"><font color="#c0c0c0">
																	<asp:textbox id="NewsReviewTemplet" runat="server" Width="100%" TextMode="MultiLine" Height="476px"></asp:textbox><INPUT class="button80" onclick="runEx()" type="button" value="ģ��Ԥ��" name="Button">
																</font>
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
