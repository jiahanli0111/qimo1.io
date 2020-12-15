<%@ Page CodeBehind="JF_EditAds.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_EditAds" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>编辑广告 </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE class="tab-content_all" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
				name="tb">
				<TBODY>
					<TR>
						<TD class="td_heading_head" vAlign="top" colSpan="2">修改广告</TD>
					</TR>
					<TR>
						<TD vAlign="top" width="34%">广告名称</TD>
						<TD width="66%" vAlign="top">&nbsp;
							<asp:TextBox id="AdsName" runat="server" CssClass="form80" MaxLength="50"></asp:TextBox>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top">广告类型</TD>
						<TD width="66%" vAlign="top">
							<asp:RadioButtonList id="AdsType" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Value="pic" Selected="True">
									图片</asp:ListItem>
								<asp:ListItem Value="flash">
									Flash</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD vAlign="top">图片(Flash)高、宽</TD>
						<TD width="66%" vAlign="top">&nbsp;高：
							<asp:TextBox id="Height" runat="server" CssClass="form80" Width="32px"></asp:TextBox>
							&nbsp;宽：
							<asp:TextBox id="Width" runat="server" CssClass="form80" Width="32px"></asp:TextBox>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top">图片(Flash)路径</TD>
						<TD width="66%" vAlign="top">&nbsp;
							<asp:TextBox id="MediaUrl" runat="server" CssClass="form80">http://</asp:TextBox>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top">目标广告联接</TD>
						<TD vAlign="top">&nbsp;
							<asp:TextBox id="ObjUrl" runat="server" CssClass="form80">http://</asp:TextBox>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top">备注</TD>
						<TD vAlign="top">&nbsp;
							<asp:TextBox id="Remark" runat="server" CssClass="form80" Width="184px" Height="84px" TextMode="MultiLine"></asp:TextBox>
						</TD>
					</TR>
					<TR>
						<TD colSpan="2" height="1" background="../images/bg_line.gif"></TD>
					</TR>
					<TR align="center" valign="middle">
						<TD colSpan="2">
							<asp:Button ID="Ads_modify" runat="server" Height="24px" Width="56px" CssClass="button" Text=" 修 改 "></asp:Button><FONT face="宋体">&nbsp;</FONT>
							<INPUT name="reset" type="button" class="button" style="WIDTH: 56px; HEIGHT: 24px" value=" 关 闭 " onclick="window.close();"></TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</body>
</HTML>
