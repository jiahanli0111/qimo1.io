<%@ Page CodeBehind="JF_EditNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_EditNews" %>
<%@ Register TagPrefix="fckeditorv2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�༭���� </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body topMargin="0">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<FIELDSET style="WIDTH: 98%" align="center"><LEGEND><B>�༭������Ϣ</B>
					</LEGEND>
					<TABLE id="Table7" cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
						<TR>
							<TD><SPAN class="tdtoptitle">������Ϣ</SPAN></TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD align="center" height="20">&nbsp;</TD>
						</TR>
					</TABLE>
					<TABLE id="Table7" cellSpacing="2" cellPadding="0" width="95%" align="center" border="0">
						<TR class="category_menu">
							<TD vAlign="top" width="51%">
								<table cellSpacing="0" cellPadding="2" width="100%" border="0">
									<tr>
										<td vAlign="top" width="17%"><u>����</u></td>
										<td colSpan="3"><asp:textbox id="title" runat="server" MaxLength="100" Width="192px"></asp:textbox><!--#include file="titlecolor.asp"--></td>
									</tr>
									<tr id="tr_objurl" style="DISPLAY: none">
										<td vAlign="top" width="17%"><font color="red"><u>��������</u></font></td>
										<td colSpan="3"><asp:textbox id="objurl" runat="server" MaxLength="100" Width="192px" Text="http://">http://</asp:textbox></td>
									</tr>
									<tr>
										<td vAlign="top"><U>�����</U></td>
										<td><asp:textbox id="click" runat="server" MaxLength="50" Width="104px">0</asp:textbox></td>
										<td width="16%"><asp:checkbox id="audit" runat="server" Text="���"></asp:checkbox></td>
										<td width="27%"><asp:checkbox id="TitleNews" runat="server" Text="��������" ForeColor="Red"></asp:checkbox></td>
									</tr>
									<tr>
										<td vAlign="top"><U>¼��ʱ��</U></td>
										<td><asp:textbox id="inputdate" runat="server" MaxLength="50" Width="104px"></asp:textbox></td>
										<td width="16%"><asp:checkbox id="recommend" runat="server" Text="�Ƽ�"></asp:checkbox></td>
										<td width="27%"><asp:checkbox id="MorePro" runat="server" Text="��������"></asp:checkbox></td>
									</tr>
									<tr>
										<td vAlign="top"><U>����</U></td>
										<td width="40%"><asp:textbox id="author" runat="server" MaxLength="50" Width="104px"></asp:textbox></td>
										<td id="td_notpage" colSpan="2"><asp:checkbox id="notpage" runat="server" Text="����ҳ"></asp:checkbox></td>
									</tr>
									<tr id="tr_templet">
										<td vAlign="top"><U>����ģ��</U></td>
										<td><asp:dropdownlist id="Templet" runat="server"></asp:dropdownlist><IMG height="12" src="../images/icon-help.gif" width="11"></td>
										<td colSpan="2"></td>
									</tr>
									<tr>
										<td vAlign="top"><u><strong>ͼƬ·��</strong></u></td>
										<td colSpan="3"><asp:textbox id="picpath" runat="server" Width="204px"></asp:textbox><a 
            style="CURSOR: hand" 
            onclick='newwin("../setup/JF_UpLoadFile.aspx?otype=picpath&amp;ThumbWidth=<%=ThumbWidth%>&amp;ThumbHeight=<%=ThumbHeight%>","UpFile","400","420")' 
            ><FONT color="#ff0000">�ϴ�ͼƬ</FONT></a></td>
									</tr>
									<tr id="tr_rate" style="DISPLAY: none">
										<td vAlign="top"><U>���ŵȼ�</U></td>
										<td colSpan="3">
											<table cellSpacing="0" cellPadding="0" border="0">
												<tr>
													<td><asp:listbox id="list_NewsRateNot" title="δѡר��" runat="server" SelectionMode="Multiple" Height="92px">
															<asp:ListItem Value=",1">����һ</asp:ListItem>
															<asp:ListItem Value=",2">�����</asp:ListItem>
															<asp:ListItem Value=",3">������</asp:ListItem>
															<asp:ListItem Value=",4">������</asp:ListItem>
															<asp:ListItem Value=",5">������</asp:ListItem>
															<asp:ListItem Value=",6">������</asp:ListItem>
															<asp:ListItem Value=",7">������</asp:ListItem>
															<asp:ListItem Value=",8">�����</asp:ListItem>
															<asp:ListItem Value=",9">�����</asp:ListItem>
														</asp:listbox></td>
													<td><asp:button id="btn_RateAdd" runat="server" Width="22px" Text=">" ToolTip="�����ѡ����"></asp:button><BR>
														<asp:button id="btn_RateAddAll" runat="server" Text=">>" ToolTip="�������м���"></asp:button><BR>
														<asp:button id="btn_RateDel" runat="server" Width="22px" Text="<" ToolTip="ɾ����ѡ����"></asp:button><BR>
														<asp:button id="btn_RateDelAll" runat="server" Text="<<" ToolTip="ɾ�����м���"></asp:button></td>
													<td><asp:listbox id="list_NewsRateSelect" runat="server" SelectionMode="Multiple" Height="93px"></asp:listbox></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</TD>
							<TD vAlign="top" width="49%">
								<TABLE cellSpacing="0" width="100%" border="0">
									<TR>
										<td vAlign="top" width="98"><u>������</u></td>
										<td width="339"><asp:textbox id="stitle" runat="server" MaxLength="50"></asp:textbox><!--#include file="stitlecolor.asp"--></td>
									</TR>
									<tr>
										<td vAlign="top"><u>�������<br>
												(�ؼ���)</u></td>
										<td vAlign="top"><asp:textbox id="keyword" runat="server" MaxLength="50"></asp:textbox></td>
									</tr>
									<tr>
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"><U>������Դ</U></td>
										<td><asp:textbox id="source" runat="server" MaxLength="50" Width="104px"></asp:textbox><asp:dropdownlist id="oSource" runat="server"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"><U>���α༭</U></td>
										<td><asp:textbox id="editer" runat="server" MaxLength="50" Width="104px"></asp:textbox><asp:dropdownlist id="oEditor" runat="server"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"
											width="98"><u><strong>����ժҪ</strong></u></td>
										<td><asp:textbox id="depict" runat="server" Width="211px" Height="62px" ToolTip="֧��HTML�﷨" TextMode="MultiLine"></asp:textbox></td>
									</tr>
									<tr id="getcategory" style="DISPLAY: none" name="getcategory">
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"
											width="98"><u><strong>��Ŀ</strong></u></td>
										<td><asp:dropdownlist id="rCategory" runat="server"></asp:dropdownlist></td>
									</tr>
								</TABLE>
							</TD>
						</TR>
					</TABLE>
					<table id="tab_subject" style="DISPLAY: none" cellSpacing="2" width="95%" align="center"
						border="0">
						<tr>
							<td vAlign="top" width="57"><u><strong>����ר��</strong></u></td>
							<td title="δѡר��" width="4"><asp:listbox id="List_NotSubject" title="δѡר��" runat="server" SelectionMode="Multiple" Height="92px"></asp:listbox></td>
							<td width="4"><asp:button id="a1" runat="server" Width="22px" Text=">" ToolTip="�����ѡר��"></asp:button><br>
								<asp:button id="a2" runat="server" Text=">>" ToolTip="�������ר��"></asp:button><br>
								<asp:button id="b1" runat="server" Width="22px" Text="<" ToolTip="ɾ����ѡר��"></asp:button><br>
								<asp:button id="b2" runat="server" Text="<<" ToolTip="ɾ������ר��"></asp:button></td>
							<td title="��ѡר��"><asp:listbox id="List_YesSubject" runat="server" SelectionMode="Multiple" Height="93px"></asp:listbox></td>
						</tr>
					</table>
					<TABLE cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
						<TR>
							<TD width="40%" height="35"><SPAN class="tdtoptitle">����</SPAN></TD>
							<TD align="right" colSpan="6" height="35"><asp:button id="n_add" runat="server" Width="54px" Height="25px" text=" �� �� "></asp:button><asp:button id="n_modify" runat="server" Width="54px" Text=" �� �� " Height="25px"></asp:button>&nbsp;
								<INPUT style="WIDTH: 54px; HEIGHT: 25px" type="reset" value=" �� ԭ " name="reset"></TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
						</TR>
						<TR>
							<TD align="center" colSpan="8" height="6"></TD>
						</TR>
					</TABLE>
					<TABLE id="tab_content" cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
						<TR>
							<TD><FCKEDITORV2:FCKEDITOR id="Content" runat="server" Height="400px" BasePath="../Edit/" ToolbarSet="Default"></FCKEDITORV2:FCKEDITOR></TD>
						</TR>
						<tr>
							<td height="10"></td>
						</tr>
					</TABLE>
					<%=script%>
					<input type=hidden value="<%=r_filename%>" name=r_filename> <input type=hidden value="<%=r_datepath%>" name=r_datepath>
				</FIELDSET>
			</form>
		</FONT>
	</body>
</HTML>
