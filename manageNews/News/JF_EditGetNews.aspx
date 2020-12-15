<%@ Page CodeBehind="JF_EditGetNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_EditGetNews" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�༭���Ųɼ�����  </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">
		.numTable { BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; FONT-FAMILY: tahoma }
		.numLine { PADDING-LEFT: 2px; OVERFLOW: hidden; LINE-HEIGHT: 16px; POSITION: relative; HEIGHT: 100% }
		.numTextArea { BORDER-RIGHT: medium none; BORDER-TOP: medium none; OVERFLOW: auto; BORDER-LEFT: medium none; WIDTH: 100%; LINE-HEIGHT: 16px; BORDER-BOTTOM: medium none; HEIGHT: 100%; WORD-WRAP: normal }
		</style>
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
						<TD colSpan="3"><SPAN class="tdtoptitle">�༭���Ųɼ�����</SPAN></TD>
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
																���Ųɼ�ѡ��</TD>
															<TD class="tab-none" align="right">&nbsp;
																<asp:button id="g_add" runat="server" CssClass="button" Text="���"></asp:button><asp:button id="g_modify" runat="server" CssClass="button" Text="�޸�"></asp:button>&nbsp;<INPUT class="button" type="reset" value="��ԭ"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" cellSpacing="5" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top" width="100%">
																<table cellSpacing="0" cellPadding="0" width="100%" border="0">
																	<tr class="">
																		<td width="24%">����</td>
																		<td width="17%">�����Ŀ</td>
																		<td width="11%">�ɼ�����</td>
																		<td width="48%">ͼƬ����Ŀ¼</td>
																	</tr>
																	<tr>
																		<td><asp:textbox id="Title" runat="server" CssClass="form80"></asp:textbox></td>
																		<td><asp:dropdownlist id="CategoryID" runat="server"></asp:dropdownlist></td>
																		<td><asp:textbox id="GetCount" runat="server" CssClass="form80" Width="51px">50</asp:textbox></td>
																		<td><asp:dropdownlist id="FolderID" runat="server"></asp:dropdownlist></td>
																	</tr>
																</table>
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">����ѡ��</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:checkbox id="Auditing" runat="server" Text="���ͨ��"></asp:checkbox><asp:checkbox id="IsOver" runat="server" Text="���������ظ�"></asp:checkbox><STRONG>&nbsp;&nbsp; 
																	�ɼ���ַҳ�����</STRONG>
																<asp:dropdownlist id="CharSet" runat="server">
																	<asp:ListItem Value="gb2312" Selected="True">��������(gb2312)</asp:ListItem>
																	<asp:ListItem Value="big5">��������(big5)</asp:ListItem>
																	<asp:ListItem Value="utf-8">Unicode(utf-8)</asp:ListItem>
																</asp:dropdownlist></TD>
														</TR>
														<TR>
															<TD class="tdtoptitle" vAlign="top">�б�ƥ�����</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">�ɼ���ַ</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="ListUrl" runat="server" CssClass="form80" Width="400px">http://</asp:textbox></TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��һҳ�б�</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="SNextPage" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="32px"></asp:textbox><br>
																�����ڣ�<asp:textbox id="ENextPage" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="32px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD vAlign="top" bgcolor="#f5f5f5" class="td_heading"><p>˵��<font face="����">�����µġ���ʼ�� 
																		�����ڡ�����ֱ�����Ҫ�ɼ����ݵ�֮ǰ��֮����ַ�<br>
																		<hr size="1">
																		����Ҫ�ɼ��������ݵ�<font color="red">��������</font>��</font><br>
																	�ַ������£�<br>
																	<font color="#330000">&lt;tr&gt;<br>
																		&lt;td height="20" valign="middle"&gt;&lt;span 
																		class="style6"&gt;��&lt;/span&gt;&lt;a 
																		href="http://www.jfcms.net/Help/Problem/20050705/153735.shtml" target="_blank" 
																		class="S10-Normal"&gt;�����װMSSQL��SP��������ķ���&lt;/a&gt;&lt;/td&gt;<br>
																		&lt;/tr&gt;<br>
																	</font><font style="BACKGROUND-COLOR: #000000">��ʼ�ڣ�class="style6"&gt;��&lt;/span&gt;<br>
																		�����ڣ�&lt;/td&gt;</font><br>
																<P></P>
																<font face="����">
																	<hr size="1">
																	<font face="����">����Ҫ�ɼ��������ݵ�<font color="red">����</font>��</font><br>
																	�ַ������£�<br>
																	<font color="#330000">&lt;tr&gt;<br>
																		&lt;td height="33" align="center" background="/Bgimages/Point.gif" 
																		class="s9_noline"&gt;��Դ:&lt;a href=http://www.xunt.cn target= 
																		_blank&gt;��������&lt;/a&gt; ʱ��:2005-12-20 
																		15:54:10����:���±༭:����:&lt;scriptsrc='http://www.jfcms.net/ClickCount.asp?action=Show&amp;NewsID=444'&gt;&lt;/script&gt;&lt;/td&gt;<br>
																		&lt;/tr&gt;<br>
																	</font><font style="BACKGROUND-COLOR: #000000">��ʼ�ڣ�����:<br>
																		�����ڣ��༭:</font></font></TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��������</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="SNewsUrl" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="32px"></asp:textbox><BR>
																�����ڣ�<asp:textbox id="ENewsUrl" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="32px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="tdtoptitle" vAlign="top">����ƥ�����</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">���ű���</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="STitle" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="32px">&lt;title&gt;</asp:textbox><BR>
																�����ڣ�<asp:textbox id="ETitle" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="32px">&lt;/title&gt;</asp:textbox></TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��������</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="SContent" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox><BR>
																�����ڣ�<asp:textbox id="EContent" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��������</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="SAuthor" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox><BR>
																�����ڣ�<asp:textbox id="EAuthor" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">������Դ</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="SSource" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox><BR>
																�����ڣ�<asp:textbox id="ESource" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox>
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��һҳ����</TD>
														</TR>
														<TR>
															<TD vAlign="top">��ʼ�ڣ�<asp:textbox id="SNewsNextPage" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox><BR>
																�����ڣ�<asp:textbox id="ENewsNextPage" runat="server" CssClass="form80" Width="400px" TextMode="MultiLine"
																	Height="48px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD vAlign="top">
																<table cellSpacing="0" width="100%" border="0">
																	<tr class="td_heading">
																		<td class="td_heading" width="49%">������������(ÿһ��Ϊһ������)</td>
																		<td class="td_heading" width="51%">�滻Ϊ</td>
																	</tr>
																	<tr>
																		<td height="120">
																			<table class="numTable" height="100" cellSpacing="0" cellPadding="0" width="100%">
																				<tr>
																					<td width="24" bgColor="#eeeeee" height="100">
																						<div class="numLine" id="linenum1"></div>
																					</td>
																					<td align="right" width="250"><asp:textbox id="SAd" runat="server" CssClass="numTextarea" Width="100%" TextMode="MultiLine"></asp:textbox></td>
																				</tr>
																			</table>
																		</td>
																		<td>
																			<table class="numTable" height="100" cellSpacing="0" cellPadding="0" width="100%">
																				<tr>
																					<td width="24" bgColor="#eeeeee" height="100">
																						<div class="numLine" id="linenum2"></div>
																					</td>
																					<td align="right" width="250"><asp:textbox id="EAd" runat="server" CssClass="numTextarea" Width="100%" TextMode="MultiLine"></asp:textbox></td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table>
															</TD>
														</TR>
														<TR>
															<TD class="td_heading" vAlign="top">��ע</TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="Remark" runat="server" Width="100%" TextMode="MultiLine" Height="62px"></asp:textbox></TD>
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
		<script>
		LineNum(document.getElementById("SAd"),document.getElementById("linenum1"));
		LineNum(document.getElementById("EAd"),document.getElementById("linenum2"));
		function LineNum(textarea,linenum){
			for(var i=1,s="";i<=200;i++)
				s+=("00"+i).replace(/.*(\d{3}$)/,"$1")+"<br>";
			linenum.innerHTML=s;
			textarea.onscroll=function(){
			linenum.scrollTop=this.scrollTop;
			}
		}
		</script>
	</body>
</HTML>
