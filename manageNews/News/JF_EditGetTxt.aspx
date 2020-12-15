<%@ Page CodeBehind="JF_EditGetTxt.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_EditGetTxt" %>
<%@ Register TagPrefix="fckeditorv2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>网站管理系统 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="WIDTH: 115px" border="0"></TD>
									<TD vAlign="bottom" align="left" height="10"></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD border="0"><IMG height="23" src="../images/leftcorner.gif" width="23"></TD>
									<TD vAlign="bottom" align="left" width="100%" background="../images/backheading.gif"
										height="24"><SPAN class="tdtoptitle">采集录入</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR class="category_menu">
						<TD align="center" colSpan="6" height="20">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="1%" height="20">&nbsp;</TD>
						<TD width="8%"><u>标题</u></TD>
						<TD colSpan="3">&nbsp;
							<asp:textbox id="title" runat="server" Width="216px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="title">不能为空</asp:requiredfieldvalidator></TD>
						<TD width="47%"><SPAN class="tdtoptitle">选择专题(可选项 按CTRL可多选) <IMG height="12" src="../images/icon-help.gif" width="11"></SPAN></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>幅标题</u></TD>
						<TD colSpan="3">&nbsp;
							<asp:textbox id="stitle" runat="server" MaxLength="50" Width="216px"></asp:textbox>&nbsp;<IMG height="12" src="../images/icon-help.gif" width="11"></TD>
						<TD vAlign="top" rowSpan="7">
							<table cellSpacing="0" cellPadding="0" border="0">
								<tr>
									<td vAlign="top" width="150"><asp:listbox id="dealer" runat="server" Width="150px" Height="90px" SelectionMode="Multiple"></asp:listbox></td>
									<td vAlign="top" align="center" width="28"><asp:button id="b_add" runat="server" Width="24px" Height="20px" Text=">" CausesValidation="False"></asp:button><BR>
										<asp:button id="b_add_all" runat="server" Width="24px" Height="20px" Text=">>" CausesValidation="False"></asp:button><BR>
										<asp:button id="b_del" runat="server" Width="24px" Height="20px" Text="<" CausesValidation="False"></asp:button><BR>
										<asp:button id="b_del_all" runat="server" Width="24px" Height="20px" Text="<<" CausesValidation="False"></asp:button></td>
									<td vAlign="top" width="150"><asp:listbox id="dealer_list" runat="server" Width="150px" Height="90px" SelectionMode="Multiple"></asp:listbox></td>
								</tr>
							</table>
							<br>
							<SPAN class="tdtoptitle">新闻级别(可选项 按CTRL可多选)</SPAN> <IMG height="12" src="../images/icon-help.gif" width="11"><br>
							<table cellSpacing="0" cellPadding="0" width="100" border="0">
								<tr>
									<td vAlign="top" width="150"><asp:listbox id="Listbox1" runat="server" Width="150px" Height="90px" SelectionMode="Multiple"></asp:listbox></td>
									<td vAlign="top" align="center" width="28"><asp:button id="Button1" runat="server" Width="24px" Height="20px" Text=">" CausesValidation="False"></asp:button><BR>
										<asp:button id="Button2" runat="server" Width="24px" Height="20px" Text=">>" CausesValidation="False"></asp:button><BR>
										<asp:button id="Button3" runat="server" Width="24px" Height="20px" Text="<" CausesValidation="False"></asp:button><BR>
										<asp:button id="Button4" runat="server" Width="24px" Height="20px" Text="<<" CausesValidation="False"></asp:button></td>
									<td vAlign="top" width="150"><asp:listbox id="Listbox2" runat="server" Width="150px" Height="90px" SelectionMode="Multiple"></asp:listbox></td>
								</tr>
							</table>
						</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>相关新闻<BR>
								(关键字)</u></TD>
						<TD colSpan="3">&nbsp;
							<asp:textbox id="keyword" runat="server" MaxLength="50"></asp:textbox>&nbsp;<IMG height="12" src="../images/icon-help.gif" width="11"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>责任编辑</u></TD>
						<TD colSpan="3">&nbsp;
							<asp:textbox id="editer" runat="server" MaxLength="50"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>新闻来源</u></TD>
						<TD colSpan="3">&nbsp;
							<asp:textbox id="source" runat="server" MaxLength="50" Width="104px"></asp:textbox><asp:dropdownlist id="oSource" runat="server"></asp:dropdownlist>&nbsp;<IMG height="12" src="../images/icon-help.gif" width="11"></TD>
						<TD vAlign="top" width="1%">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>作者</u></TD>
						<TD>&nbsp;
							<asp:textbox id="author" runat="server" MaxLength="50"></asp:textbox></TD>
						<TD><u>审核</u></TD>
						<TD><asp:checkbox id="audit" runat="server" Text=" "></asp:checkbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u><U>录入时间</U></u></TD>
						<TD width="22%">&nbsp;
							<asp:textbox id="inputdate" runat="server" MaxLength="50"></asp:textbox></TD>
						<TD width="6%"><u>推荐</u></TD>
						<TD width="15%"><asp:checkbox id="recommend" runat="server" Text=" "></asp:checkbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>点击量</u></TD>
						<TD>&nbsp;
							<asp:textbox id="click" runat="server" MaxLength="50">0</asp:textbox></TD>
						<TD>不分页</TD>
						<TD><asp:checkbox id="notpage" runat="server" Text=" "></asp:checkbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD><u>新闻模板</u></TD>
						<TD>&nbsp;
							<asp:dropdownlist id="Templet" runat="server"></asp:dropdownlist>&nbsp;<IMG height="12" src="../images/icon-help.gif" width="11"></TD>
						<TD>栏目</TD>
						<TD><asp:dropdownlist id="category" runat="server"></asp:dropdownlist></TD>
						<TD vAlign="top">&nbsp;</TD>
					</TR>
					<TR>
						<TD colSpan="2" height="35"><SPAN class="tdtoptitle">内容</SPAN></TD>
						<TD align="right" colSpan="4" height="35"><asp:button id="n_add" runat="server" text="添加"></asp:button>&nbsp;
							<INPUT type="reset" value="还原" name="reset"></TD>
					</TR>
					<TR>
						<TD bgColor="#cccccc" colSpan="6" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="center" colSpan="6" height="10"><FCKEDITORV2:FCKEDITOR id="content" runat="server" Height="400px" BasePath="../Edit/" ToolbarSet="Default"></FCKEDITORV2:FCKEDITOR></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" colSpan="6">&nbsp;</TD>
					</TR>
				</TABLE>
				<input type="hidden" name="FolderID" value="<%=FolderID%>">
				</form>
		</FONT>
	</body>
</HTML>
