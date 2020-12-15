<%@ Register TagPrefix="fckeditorv2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Page CodeBehind="JF_EditSNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_EditSNews" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>编辑专题新闻  </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<FIELDSET style="WIDTH: 98%" align="center"><LEGEND><B>编辑专题信息</B>
					</LEGEND>
					<TABLE width="95%" border="0" align="center" cellpadding="0" cellSpacing="0" id="Table7">
						<TR>
							<TD colSpan="3"><SPAN class="tdtoptitle">基本信息</SPAN></TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD align="center" colSpan="3" height="20">&nbsp;</TD>
						</TR>
						<TR class="category_menu">
							<TD align="right" width="1%" height="20">&nbsp;</TD>
							<TD width="11%"><u>专题标题</u></TD>
							<TD width="88%">
								<asp:textbox id="title" runat="server" Width="264px" MaxLength="200"></asp:textbox>
							</TD>
						</TR>
						<TR class="category_menu">
							<TD align="right" height="22" style="HEIGHT: 22px">&nbsp;</TD>
							<TD style="HEIGHT: 22px"><u>责任编辑</u></TD>
							<TD style="HEIGHT: 22px"><asp:TextBox ID="editer" runat="server" MaxLength="50" Width="104px"></asp:TextBox></TD>
						</TR>
						<TR class="category_menu">
							<TD align="right" height="20">&nbsp;</TD>
							<TD><u>专题文件名</u></TD>
							<TD><asp:TextBox ID="SubjectFileName" runat="server" MaxLength="20" Width="104px"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD colSpan="2" height="35"><SPAN class="tdtoptitle">专题模板内容</SPAN></TD>
							<TD align="right" height="35"><asp:button id="n_add" runat="server" text=" 添 加 " Width="55px" Height="24px"></asp:button><asp:button id="n_modify" runat="server" Text=" 修 改 " Width="55px" Height="24px" Visible="False"></asp:button>&nbsp;
								<INPUT type="reset" value=" 还 原 " name="reset" style="WIDTH: 55px; HEIGHT: 24px"></TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD colSpan="3" height="10">
								<asp:TextBox id="Content" runat="server" Width="673px" Height="600px" TextMode="MultiLine"></asp:TextBox></TD>
						</TR>
						<TR class="category_menu">
							<TD colspan="3" align="right">&nbsp;</TD>
						</TR>
					</TABLE>
				</FIELDSET>
			</form>
		</FONT>
	</body>
</HTML>
