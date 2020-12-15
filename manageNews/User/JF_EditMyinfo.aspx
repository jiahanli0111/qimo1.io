<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Page CodeBehind="JF_EditMyinfo.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.User.JF_EditMyinfo" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<TITLE>编辑用户</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="WIDTH: 115px" border="0"></TD>
									<TD vAlign="bottom" align="left" width="100%" height="10"></TD>
									<TD></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">编辑用户信息</SPAN></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="center" colSpan="3" height="20">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><u>用户名</u></TD>
						<TD class="td_heading">&nbsp;
							<asp:textbox id="UserName" runat="server" MaxLength="10"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><u>昵称</u></TD>
						<TD class="td_heading">&nbsp;
							<asp:textbox id="NickName" runat="server" MaxLength="20"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD class="td_heading" width="19%"><u>密码</u></TD>
						<TD class="td_heading" width="76%">&nbsp;
							<asp:textbox id="UserPwd" runat="server" MaxLength="20" TextMode="Password"></asp:textbox>
							<asp:Label id="modifypwd" runat="server" ForeColor="Red" Visible="False">密码不修改请留空</asp:Label></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD class="td_heading" width="19%"><u>确认密码</u></TD>
						<TD class="td_heading" width="76%">&nbsp;
							<asp:textbox id="con_UserPwd" runat="server" MaxLength="20" TextMode="Password"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD>&nbsp;</TD>
						<TD>&nbsp;</TD>
					</TR>
				</TABLE>
				<TABLE id="Table9" cellSpacing="0" width="95%" align="center" border="0">
					<TR class="category_menu">
						<TD width="9%" height="20"></TD>
						<TD width="91%"><asp:button id="u_modify" runat="server" text="提交"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;
							<INPUT type="reset" value="还原" name="reset"></TD>
					</TR>
				</TABLE>
				
		</FONT>
		<script>
function CheckPurview(){
if (document.Form1.Purview2.checked == true) {
        Purview2.style.display = "";

}else{
        Purview2.style.display = "none";

}
}
function CheckShowCategory(){
if (document.Form1.ShowCategory.checked == true) {
        ShowCategory.style.display = "";

}else{
        ShowCategory.style.display = "none";

}
}
		</script>
	</body>
</HTML>
