<%@ Page CodeBehind="JF_SCategory.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_SCategory" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ר�������� </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<table width="95%" border="0" align="center" cellspacing="0">
					<tr>
						<td width="54%" valign="top">
							<TABLE cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
								<TR>
									<TD colSpan="2" height="23"><asp:Label ID="Title" Runat="server" Font-Bold="True">�������</asp:Label></TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="2" height="1"></TD>
								</TR>
								<TR>
									<TD colSpan="2" height="10"></TD>
								</TR>
								<TR>
									<TD width="22%" height="32" valign="top"><U>�����</U></TD>
									<TD width="78%" height="32" valign="top">
										<asp:TextBox id="CategoryName" runat="server" CssClass="form80" MaxLength="45"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD height="52" valign="top"><U>Ŀ¼��</U></TD>
									<TD height="52" valign="top">
										<asp:TextBox id="DirName" runat="server" CssClass="form80" MaxLength="10" Width="216px" AutoPostBack="True"></asp:TextBox>
										<table cellSpacing="0" width="99%" border="0">
											<tr>
												<td class="td_title"><SPAN class="text_note_red">�ļ��е�����!�����ʹ������</SPAN></td>
											</tr>
										</table>
									</TD>
								</TR>
								<TR>
									<TD height="52" valign="top"><U>��չ��</U></TD>
									<TD height="52" valign="top">
										<asp:TextBox id="FileExt" runat="server" CssClass="form80" Width="216px">html</asp:TextBox>
										<table cellSpacing="0" width="99%" border="0">
											<tr>
												<td class="td_title"><SPAN class="text_note_red">������µ�ר�������ļ���չ��</SPAN></td>
											</tr>
										</table>
									</TD>
								</TR>
								<TR>
									<TD height="39" valign="top"><U>�ļ���·��</U></TD>
									<TD height="39" valign="top">
										<asp:TextBox id="DirPath" runat="server" CssClass="form80" Width="216px"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD height="23" valign="top"><U>�ļ���WEB��ַ</U></TD>
									<TD height="23">
										<asp:TextBox id="WebPath" runat="server" CssClass="form80" Width="216px"></asp:TextBox>
										<table cellSpacing="0" width="99%" border="0">
											<tr>
												<td class="td_title">
													�ļ��е���ָ���������Ĭ��Ϊ��ǰ������+�ļ������� �������� �ļ������� Ϊimages<BR>
													�ļ���WEB·��&nbsp; <a href="http://www.xunt.net/images/">http://www.xunt.net/images/ </a>
												</td>
											</tr>
										</table>
									</TD>
								</TR>
								<TR>
									<TD height="23" valign="top"><U>��ע</U><BR>
									</TD>
									<TD height="23">
										<asp:TextBox id="Remark" runat="server" Width="272px" CssClass="form80" Height="56px" TextMode="MultiLine"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD colSpan="2" height="10"></TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="2" height="1"></TD>
								</TR>
								<TR align="center">
									<TD colSpan="2" height="46">
										<asp:Button id="s_modify" runat="server" Width="48px" Text=" �� �� " CssClass="button" Height="23px"
											Visible="False"></asp:Button>
										<asp:Button id="s_add" runat="server" Height="23px" CssClass="button" Text=" �� �� " Width="48px"></asp:Button>&nbsp;
										<INPUT class="button" style="WIDTH: 45px; HEIGHT: 23px" type="reset" value=" �� д "></TD>
								</TR>
							</TABLE>
						</td>
						<td width="46%" valign="top">
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
									<TD noWrap background="../images/tableheadingback.gif">����</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="66" noWrap background="../images/tableheadingback.gif">����ʱ��</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="33" noWrap background="../images/tableheadingback.gif">�޸�</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="35" noWrap background="../images/tableheadingback.gif">ɾ��</TD>
								</TR>
								<asp:repeater id="list_specialty" runat="server">
									<ItemTemplate>
										<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
											onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD noWrap width="53"><img src="" width="5" height="0">
												<%#DataBinder.Eval(Container.DataItem,"SpecialtyID")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"SpecialtyName")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd}")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='?action=modify&SpecialtyID=<%# DataBinder.Eval(Container.DataItem,"SpecialtyID")%>'>�޸�</a></TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='?action=del&SpecialtyID=<%# DataBinder.Eval(Container.DataItem,"SpecialtyID")%>' onclick="return Del()">ɾ��</a></TD>
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
