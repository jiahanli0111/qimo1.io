<%@ Page CodeBehind="JF_AdsDepict.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_AdsDepict" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>广告统计报表 </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE class="" id="tb" cellSpacing="0" cellPadding="0" width="100%" border="0" name="tb">
				<TBODY>
					<TR>
						<TD width="100%" vAlign="top" class=""><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" id="Table1">
								<tr>
									<td width="2"><img src="../Images/ads/Adstoobar-5.GIF" width="1" height="26"></td>
									<td width="65" height="26" align="center" background="../Images/ads/Adstoobar-1.GIF"><font color="#ffffff"><strong>概况</strong></font></td>
									<td width="3" background="../Images/ads/Adstoobar-1.GIF"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" height="26" align="center" valign="middle" background="../Images/ads/Adstoobar-2.GIF"><a href="JF_Ads_Hour_Depict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>"><font color="#000000">时报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" height="26" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_Ads_Day_Depict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">日报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href="JF_Ads_Month_Depict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>"><font color="#000000">月报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_Ads_IP_Depict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">IP报表</font></a></td>
									<td width="1" height="26"><img src="../Images/ads/Adstoobar-4.GIF" width="2" height="26"></td>
									<td width="165" height="26">&nbsp;
									
									</td>
								</tr>
							</table>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top"><table width="500" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#f6f6f6"
								id="Table2">
								<tr valign="middle">
									<td height="16" colspan="2" background="../Images/ads/Adstoobar_down.gif"><strong><font color="#ffffff">
												[<asp:Label id="AdsName" runat="server" ForeColor="White" Font-Bold="True"></asp:Label>]
												－ 概况 </font></strong>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td width="230" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>&nbsp;<u>总显示次数</u></td>
									<td width="267" height="25" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>&nbsp;
										<asp:Label id="AllShowCount" runat="server">0</asp:Label>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>总点击次数</u></td>
									<td height="25">&nbsp;
										<asp:Label id="AllClickCount" runat="server">0</asp:Label>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>总平均点击率</u></td>
									<td height="25">&nbsp;
										<asp:Label id="AllAverageClick" runat="server">0</asp:Label>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										&nbsp;<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">以上统计数据为实时数据
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>本月显示次数</u></td>
									<td height="25">&nbsp;
										<asp:Label id="MonthShowCount" runat="server">0</asp:Label></td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>本月点击次数</u></td>
									<td height="25">&nbsp;
										<asp:Label id="MonthClickCount" runat="server">0</asp:Label></td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>本月点击率</u></td>
									<td height="25">&nbsp;
										<asp:Label id="MonthAverageClick" runat="server">0</asp:Label></td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										&nbsp;<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">以上统计数据为实时数据
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>今日显示次数</u></td>
									<td height="25">&nbsp;
										<asp:Label id="TodayShowCount" runat="server">0</asp:Label>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>今日点击次数</u></td>
									<td height="25">&nbsp;
										<asp:Label id="TodayClickCount" runat="server">0</asp:Label>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td>&nbsp;<u>今日点击率</u></td>
									<td height="25">&nbsp;
										<asp:Label id="TodayAverageClick" runat="server">0</asp:Label>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										&nbsp;<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">以上统计数据为实时数据
									</td>
								</tr>
							</table>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</body>
</HTML>
