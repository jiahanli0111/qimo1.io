<%@ Page CodeBehind="JF_Main.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_Main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>网站管理系统 </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
		           <!--	 <TR>
					<TD colSpan="5"><SPAN class="tdtoptitle">系统信息</SPAN></TD>
				</TR>
				<TR bgColor="#808080">
					<TD bgColor="#cccccc" colSpan="5" height="1"></TD>
				</TR>
				<TR class="category_menu">
					<TD align="center" colSpan="5" height="5"></TD>
				</TR>
				<TR bgcolor="#fffffb" class="category_menu">
					<TD width="5%" height="20" align="right">&nbsp;</TD>
					<TD colspan="3" valign="top">
						<asp:Label id="SystemInfo" runat="server"></asp:Label></TD>
					<TD width="57%">
						<asp:Label id="Contact" runat="server"></asp:Label></TD>
				</TR>   -->
			</TABLE>
			<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
				<TR>
					<TD colSpan="5"><SPAN class="tdtoptitle">统计信息</SPAN></TD>
				</TR>
				<TR bgColor="#808080">
					<TD bgColor="#cccccc" colSpan="5" height="1"></TD>
				</TR>
				<TR class="category_menu">
					<TD align="center" colSpan="5" height="5"></TD>
				</TR>
				<TR class="category_menu">
					<TD width="5%" height="20" align="right">&nbsp;</TD>
					<TD width="11%">类别记录总数</TD>
					<TD>
						<asp:Label id="CatCount" runat="server" ForeColor="Maroon" Font-Bold="True"></asp:Label></TD>
					<TD>新闻记录总数</TD>
					<TD><asp:Label ID="NewsCount" runat="server" ForeColor="#004000" Font-Bold="True"></asp:Label></TD>
				</TR>
				<TR class="category_menu">
					<TD align="right" height="7" style="HEIGHT: 7px">&nbsp;</TD>
					<TD style="HEIGHT: 7px">登录成功次数</TD>
					<TD width="24%" style="HEIGHT: 7px">
						<asp:Label id="LogCount" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
					</TD>
					<TD width="11%" style="HEIGHT: 7px">登录失败次数</TD>
					<TD width="49%" style="HEIGHT: 7px"><asp:Label id="ErrLogCount" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></TD>
				</TR>
			</TABLE>
			<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
				<TR>
					<TD height="5" colSpan="7"></TD>
				</TR>
				<TR>
					<TD colSpan="7"><SPAN class="tdtoptitle">日志信息</SPAN></TD>
				</TR>
				<TR bgColor="#808080">
					<TD bgColor="#cccccc" colSpan="7" height="1"></TD>
				</TR>
				<TR class="category_menu">
					<TD align="center" colSpan="7" height="5"></TD>
				</TR>
				<asp:Repeater id="list_log" runat="server">
					<ItemTemplate>
						<TR class="category_menu">
							<TD width="30"></TD>
							<TD><%#DataBinder.Eval(Container.DataItem,"UserName")%></TD>
							<TD><%#DataBinder.Eval(Container.DataItem,"LoginIP")%></TD>
							<TD><%#DataBinder.Eval(Container.DataItem,"OS")%></TD>
							<TD><%#(bool)DataBinder.Eval(Container.DataItem,"IsError")?"<font color=red>失败</font>":"<font color=green>成功</font>"%></TD>
							<TD><img src="" width="10" height="0"><%#DataBinder.Eval(Container.DataItem,"ErrorPwd")%></TD>
							<TD><%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyy日MM月dd日 HH时:mm分:ss秒}")%></TD>
						</TR>
					</ItemTemplate>
					<SeparatorTemplate>
						<TR>
							<TD background="../images/bg_line.gif" colSpan="7" height="1"></TD>
						</TR>
					</SeparatorTemplate>
				</asp:Repeater>
			</TABLE>
		</form>
	</body>
</HTML>
