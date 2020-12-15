<%@ Page CodeBehind="JF_Main.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_Main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>广告管理 </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<style type="text/css">
.style2 { COLOR: #006600 }
.style3 { COLOR: #000066 }
.style4 { COLOR: #330066 }
		</style>
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
				<TR>
					<TD colSpan="7"><SPAN class="tdtoptitle">广告基本概况</SPAN></TD>
				</TR>
				<TR bgColor="#808080">
					<TD bgColor="#cccccc" colSpan="7" height="1"></TD>
				</TR>
				<TR class="category_menu">
					<TD align="center" colSpan="7" height="10"></TD>
				</TR>
				<TR class="category_menu">
					<TD width="5%" height="20" align="right">&nbsp;</TD>
					<TD width="8%"><span class="style4">总显示量</span></TD>
					<TD>
						<asp:Label id="AllShow" runat="server" ForeColor="Red" Font-Bold="True">0</asp:Label></TD>
					<TD><span class="style2"> 本月显示量</span></TD>
					<TD width="15%">
						<asp:Label id="MonthShow" runat="server" Font-Bold="True" ForeColor="Red">0</asp:Label></TD>
					<TD width="10%"><span class="style3">本日显示量</span></TD>
					<TD width="38%">
						<asp:Label id="TodayShow" runat="server" Font-Bold="True" ForeColor="Red">0</asp:Label></TD>
				</TR>
				<TR class="category_menu">
					<TD width="5%" height="20" align="right">&nbsp;</TD>
					<TD width="8%"><span class="style4">总点击量</span></TD>
					<TD>
						<asp:Label id="AllClick" runat="server" ForeColor="Red" Font-Bold="True">0</asp:Label></TD>
					<TD><span class="style2"> 本月点击量</span></TD>
					<TD>
						<asp:Label id="MonthClick" runat="server" Font-Bold="True" ForeColor="Red">0</asp:Label></TD>
					<TD><span class="style3">本日点击量</span></TD>
					<TD><FONT face="宋体">
							<asp:Label id="TodayClick" runat="server" Font-Bold="True" ForeColor="Red">0</asp:Label></FONT></TD>
				</TR>
				<TR class="category_menu">
					<TD align="right" height="7" style="HEIGHT: 7px">&nbsp;</TD>
					<TD style="HEIGHT: 7px"><span class="style4">总点击率</span></TD>
					<TD width="14%" style="HEIGHT: 7px">
						<asp:Label id="AllAverage" runat="server" ForeColor="Red" Font-Bold="True">0</asp:Label>
					</TD>
					<TD width="10%" style="HEIGHT: 7px"><span class="style2">本月点击率</span></TD>
					<TD style="HEIGHT: 7px"><asp:Label id="MonthAverage" runat="server" ForeColor="Red" Font-Bold="True">0</asp:Label></TD>
					<TD style="HEIGHT: 7px"><span class="style3">本日点击率</span></TD>
					<TD style="HEIGHT: 7px">
						<asp:Label id="TodayAverage" runat="server" Font-Bold="True" ForeColor="Red">0</asp:Label></TD>
				</TR>
				<TR class="category_menu">
					<TD height="5" colspan="7" align="right"></TD>
				</TR>
				<TR bgcolor="#cccccc" class="category_menu">
					<TD height="1" colspan="7" align="right"></TD>
				</TR>
				<TR class="category_menu">
					<TD height="5" colspan="7" align="right"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
