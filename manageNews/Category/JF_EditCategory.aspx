<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Page language="c#" Codebehind="JF_EditCategory.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Category.JF_EditCategory" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�༭��Ŀ </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">
		.STYLE2 { COLOR: #ff0000 }
		</style>
	</HEAD>
	<body leftMargin="0" topMargin="0" onLoad="load();">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">�༭��Ŀ</SPAN></TD>
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
								<TABLE id="tb_content" cellSpacing="0" cellPadding="10" width="98%" align="center" border="0">
									<TBODY>
										<TR>
											<TD class="content" vAlign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="tab-on" id="navcell" onClick="switchCell(1)" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
																��������</TD>
															<TD class="tab-off" id="navcell" onClick="switchCell(2)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
																��Ŀ��ҳģ��</TD>
															<TD class="tab-off" id="navcell" onClick="switchCell(3)" name="navcell"><IMG height="16" src="../images/navbar_link.gif" width="16" align="absMiddle">
																��Ŀ��ҳģ��</TD>
															<TD class="tab-off" id="navcell" onClick="switchCell(4)" name="navcell"><IMG height="16" src="../images/navbar_awards.gif" width="16" align="absMiddle">
																����ģ��</TD>
															<TD class="tab-none" align="center">&nbsp;
																<asp:button id="add" runat="server" CssClass="button" Text="���"></asp:button><asp:button id="modify" runat="server" CssClass="button" Text="�޸�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<table class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<tbody>
														<tr>
															<td class="td_heading" vAlign="top" colSpan="4">��Ŀ��������</td>
														</tr>
														<tr>
															<td vAlign="top"><u>������Ŀ</u></td>
															<td vAlign="top"><asp:dropdownlist id="ParentID" runat="server" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="pid" runat="server" ControlToValidate="ParentID">��ѡ����Ŀ</asp:requiredfieldvalidator></td>
															<td colspan="2" vAlign="top">
																<asp:CheckBox id="AutoUpdate" runat="server" Text="�Զ�������Ŀ��ҳ"></asp:CheckBox>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle"><font face="����">��Ŀ�����б仯ʱ��ϵͳ�Զ�������Ŀ��ҳ!<br>
																				<span class="STYLE2">ע�����������ŵ��ٶȱ������벻Ҫѡ���Զ�����</span></font></td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>��Ŀ��</u></td>
															<td vAlign="top" width="178"><asp:textbox id="CategoryName" runat="server" MaxLength="30"></asp:textbox><asp:requiredfieldvalidator id="cn" runat="server" ControlToValidate="CategoryName">����д</asp:requiredfieldvalidator>
																<br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">��Ŀ�����ƣ�����ʹ������</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top" width="64"><u>Ŀ¼��</u></td>
															<td vAlign="top" width="431"><asp:textbox id="CategoryPath" runat="server" MaxLength="20" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="cp" runat="server" ControlToValidate="CategoryPath">����д</asp:requiredfieldvalidator>
																<br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">��ĿĿ¼��������ʹ�����ֻ�Ӣ����ĸ</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top" width="26">
																<p><u>����Ŀ¼</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="CategoryDir" runat="server" Width="408px"></asp:textbox><asp:requiredfieldvalidator id="cdir" runat="server" ControlToValidate="CategoryDir">����д</asp:requiredfieldvalidator><asp:customvalidator id="checkdir" runat="server"></asp:customvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">��Ŀ��Ӻ󣬽�����Ŀ¼�ﴴ��һ����Ŀ¼ ��������<span class="td_download_title">Ŀ¼��</span>Ϊ 
																			news <span class="td_download_title">����Ŀ¼</span>������d:\www&nbsp; 
																			ϵͳ����d:\www����һ����Ϊnews����Ŀ¼&nbsp; c:\www\news&nbsp;
																			<BR>
																			<span class="text_note_red">ע�⣺���������������ռ䣬������ʹ��Ĭ��ֵ������д����վĿ¼���벻Ҫ��������վ��Ŀ¼&nbsp; 
																				��Ӻ����Բ����޸� </span>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<p><u>��Ŀ����</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="CategoryDomain" runat="server" ForeColor="Red" Width="408px">http://</asp:textbox><asp:requiredfieldvalidator id="cd" runat="server" ControlToValidate="CategoryDomain">����д</asp:requiredfieldvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">��Ŀ����ָ���������Ĭ��Ϊ��ǰ������+��ĿĿ¼�� ��������<span class="td_download_title">Ŀ¼��</span>Ϊnews 
																			��Ŀ���ŵķ���·�� <a href="http://www.xunt.net/news/075200JF.shtml">http://www.xunt.net/news/075200JF.shtml</a>
																			<br>
																			���������˶�������(<a href="http://news.xunt.net/">http://news.xunt.net/</a>)ָ��ָ��news��Ŀ
																			<br>
																			������������д <a href="http://news.xunt.com/">http://news.xunt.com/</a>&nbsp;��ônews 
																			��Ŀ���ŵķ���·��<a href="http://news.xunt.com/075200.shtml">http://news.xunt.com/075200.shtml</a>
																			<br>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<p><u>��չ��</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="FileExt" runat="server" MaxLength="10">shtml</asp:textbox><asp:requiredfieldvalidator id="fe" runat="server" ControlToValidate="FileExt">����д</asp:requiredfieldvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">��������ʱ�������������������ļ���չ�����磺htm��html��asp��shtml
																			<br>
																			ע�⣺��չ���һ����д���Ժ�Ҫ�޸ģ���Ϊ���޸�����չ������Ҫˢ�±���Ŀ�µ��������ţ��˲����ܺķ�ʱ�䡣 ����������չ��Ϊshtml&nbsp; 
																			ϵͳ���ɵ��ļ�075200.shtml
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<p><u>��Ŀ��ҳ��С</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="PageSize" runat="server" MaxLength="10">30</asp:textbox><asp:requiredfieldvalidator id="ps" runat="server" ControlToValidate="PageSize">����д</asp:requiredfieldvalidator>
																<asp:regularexpressionvalidator id="chkps" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="PageSize">����д����</asp:regularexpressionvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">�˲���Ӧ������Ŀ��ҳģ�������б���ʾ��������ǩ JF:NewsCount ��Ч<BR>
																			������Ϊ30����Ŀ��ҳģ��ÿҳ����ʾ30������</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>��������Ŀģ��</u></td>
															<td vAlign="top"><asp:checkbox id="UpdateSubCategory" runat="server" Text=" "></asp:checkbox><br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">Ӧ�ô���Ŀ����Ŀ��ҳģ�塢����ģ�嵽����Ŀ</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top"><u>����ͼ�߿�</u></td>
															<td vAlign="top">��
																<asp:textbox id="ThumbWidth" runat="server" MaxLength="4" Width="40px">120</asp:textbox>��
																<asp:textbox id="ThumbHeight" runat="server" MaxLength="4" Width="40px">90</asp:textbox><asp:regularexpressionvalidator id="w" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="ThumbWidth">����д����</asp:regularexpressionvalidator><asp:regularexpressionvalidator id="h" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="ThumbHeight">����д����</asp:regularexpressionvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">ϵͳ��������ͼ�Ŀ����߶ȡ�<BR>
																			����д���� �� 120 90</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td class="td_heading" vAlign="top" colSpan="4">��Ŀ��ϸ����</td>
														</tr>
														<tr>
															<td vAlign="top"><u>��Ŀҳ�浼����</u></td>
															<td colspan="3" vAlign="top">
																<asp:textbox id="CatNavigation" runat="server" Width="423px" Height="88px" TextMode="MultiLine"></asp:textbox>
																<INPUT name="Button" onClick="runEx()" type="button" value="������Ԥ��">
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">������ϵͳ�Զ����ɣ������Ը�����Ҫ�����޸ġ�</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>����ҳ�浼����</u></td>
															<td colspan="3" vAlign="top">
																<asp:textbox id="NewsNavigation" runat="server" Width="432px" Height="88px" TextMode="MultiLine"></asp:textbox>
																<INPUT name="Button" onClick="runEx()" type="button" value="������Ԥ��">
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">������ϵͳ�Զ����ɣ������Ը�����Ҫ�����޸ġ�</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>���������ļ�</u></td>
															<td vAlign="top"><asp:checkbox id="MarkReview" runat="server" Text=" " Checked="True"></asp:checkbox><br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">���������Ҫ���������ļ���ȥ����</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top"><u>������Ŀ��ҳ</u></td>
															<td vAlign="top"><asp:checkbox id="MarkIndex" runat="server" Text=" " Checked="True"></asp:checkbox><br>
																<table cellSpacing="0" width="100%" border="0">
																	<tr>
																		<td class="tdtoptitle">���������Ҫ������Ŀ��Ŀ��ҳ��ȥ����</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>���Ի�����<br>
																	(��ѡ��)</u></td>
															<td vAlign="top" colSpan="3">��������
																<asp:textbox id="DateNameInd" runat="server" MaxLength="15" Width="80px"></asp:textbox><asp:dropdownlist id="DateNameInd_Pos" runat="server">
																	<asp:ListItem Value="1">������ǰ��</asp:ListItem>
																	<asp:ListItem Value="2">����������</asp:ListItem>
																</asp:dropdownlist><br>
																�ļ�����
																<asp:textbox id="FileNameInd" runat="server" MaxLength="15" Width="80px"></asp:textbox><asp:dropdownlist id="FileNameInd_Pos" runat="server">
																	<asp:ListItem Value="1">�ļ���ǰ��</asp:ListItem>
																	<asp:ListItem Value="2">�ļ�������</asp:ListItem>
																</asp:dropdownlist><br>
																<table cellSpacing="0" width="100%" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			<p>��������ϵͳ����������һ���ļ��� �� 20040423<br>
																				�ļ�����ϵͳ��ʱ������һ���ļ�&nbsp; �� 075200.htm<br>
																				�磺<span class="td_download_title">������</span>���룺xunt&nbsp;<span class="td_download_title">ѡ��������ǰ��</span>&nbsp;&nbsp;
																				<span class="td_download_title">�ļ���</span>����JF <span class="td_download_title">ѡ���ļ�������</span><br>
																				ϵͳ���ɵ����Ž��������ָ�ʽ��<a href="http://www.youdomain.com/news/xunt20040423/075200JF.htm">www.youdomain.com/news/xunt20040423/075200JF.htm</a></p>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</tbody>
												</table>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">��Ŀ��ҳģ��  <a href='javascript:newwin("JF_SelectTemplet.aspx?TempletType=CatIndex","select",300,170)'><font color='red'>ѡ�����е�ģ��</font></a></TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="CategoryIndexTemplet" runat="server" Width="576px" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onClick="runEx()" type="button" value="ģ��Ԥ��" class="button80"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">��Ŀ��ҳģ��  <a href='javascript:newwin("JF_SelectTemplet.aspx?TempletType=CatSub","select",300,170)'><font color='red'>ѡ�����е�ģ��</font></a></TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="CategorySubPageTemplet" runat="server" Width="576px" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onClick="runEx()" type="button" value="ģ��Ԥ��" class="button80">
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">����ģ��  <a href='javascript:newwin("JF_SelectTemplet.aspx?TempletType=News","select",300,170)'><font color='red'>ѡ�����е�ģ��</font></a></TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="NewsTemplet" runat="server" Width="576px" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onClick="runEx()" type="button" value="ģ��Ԥ��" class="button80">
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
