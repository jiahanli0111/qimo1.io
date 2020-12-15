<%@ Page CodeBehind="JF_GetAdsCode.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_GetAdsCode" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>广告类别管理 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<table width="95%" border="0" align="center" cellspacing="0">
					<tr>
						<td width="62%" valign="top">
							<TABLE cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
								<TR>
									<TD colSpan="2" height="23"><asp:Label ID="Title" Runat="server" Font-Bold="True">获得广告调用代码</asp:Label></TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="2" height="1"></TD>
								</TR>
								<TR>
									<TD colSpan="2" height="10"></TD>
								</TR>
								<TR>
									<TD width="15%" height="23"><U>类别名</U></TD>
									<TD width="85%" height="23">
										<asp:DropDownList id="category" runat="server"></asp:DropDownList></TD>
								</TR>
								<TR>
									<TD height="23"><U>备注</U><BR>
									</TD>
									<TD height="23">
										<asp:TextBox id="code" runat="server" Width="320px" CssClass="form80" Height="88px" TextMode="MultiLine"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD colSpan="2" height="10"></TD>
								</TR>
								<TR bgColor="#cccccc">
									<TD colSpan="2" height="1"></TD>
								</TR>
							</TABLE>
						</td>
						<td width="38%" valign="top">&nbsp;
						</td>
					</tr>
				</table>
			</form>
		</FONT>
	</body>
</HTML>
