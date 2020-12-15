<%@ Page CodeBehind="JF_Login.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Login.JF_Login" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>网站管理系统</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td width="1%" background="../images/headerback.gif" height="42">&nbsp;</td>
						<td width="99%" background="../images/headerback.gif" height="42"></td>
					</tr>
					<tr>
						<td width="1%" background="../images/cellback.gif">&nbsp;</td>
						<td width="99%" background="../images/cellback.gif"><a href="JF_Login.aspx"><img src="../images/login.gif" width="81" height="30" border="0"></a></td>
					</tr>
				</table>
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="WIDTH: 115px" border="0"></TD>
									<TD width="100%" height="10" align="left" vAlign="bottom"></TD>
									<TD></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">用户登录信息</SPAN></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="center" colSpan="3" height="20">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD>用户名</TD>
						<TD>&nbsp;
							<asp:textbox id="UserName" runat="server" MaxLength="20"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD width="10%">密码</TD>
						<TD width="85%">&nbsp;
							<asp:textbox id="UserPwd" runat="server" MaxLength="30" TextMode="Password"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD width="10%">验证码</TD>
						<TD width="85%">&nbsp;
							<asp:TextBox id="inputcode" runat="server" Width="80px"></asp:TextBox>
							<IMG src="../Include/CheckCode.aspx" align="absMiddle"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD>&nbsp;</TD>
						<TD>&nbsp;
							<asp:Label id="chkmsg" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
				</TABLE>
				<TABLE id="Table9" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="2">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD align="center" colSpan="2" height="20">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD width="9%" height="20"></TD>
						<TD width="91%">
							<asp:button id="login" runat="server" text="登录"></asp:button>&nbsp;<FONT face="宋体">&nbsp;&nbsp;&nbsp;
							</FONT><INPUT type="reset" value="还原" name="reset"></TD>
					</TR>
				</TABLE>
				
			</form>
		</FONT>
		<script language="javascript">
    //if (self.location!=top.location)window.location.href="../Login/JF_login.aspx";
		</script>
	</body>
</HTML>
