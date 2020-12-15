<%@ Page CodeBehind="JF_Ads_IP_Depict.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_Ads_IP_Depict" %>
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
		<SCRIPT src="../include/js/date.js" charset="gb2312"></SCRIPT>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE class="" id="tb" cellSpacing="0" cellPadding="0" width="100%" border="0" name="tb">
				<TBODY>
					<TR>
						<TD width="100%" vAlign="top" class=""><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" id="Table1">
								<tr>
									<td width="2"><img src="../Images/ads/Adstoobar-5.GIF" width="1" height="26"></td>
									<td width="65" height="26" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_AdsDepict.aspx?AdsID=<%=AdsID%>&amp;AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">概况</font></a></td>
									<td width="3" background="../Images/ads/Adstoobar-1.GIF"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" height="26" align="center" valign="middle" background="../Images/ads/Adstoobar-2.GIF"><a href="JF_Ads_Hour_Depict.aspx?AdsID=<%=AdsID%>&amp;AdsCategoryID=<%=AdsCategoryID%>"><font color="#000000">时报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" height="26" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_Ads_Day_Depict.aspx?AdsID=<%=AdsID%>&amp;AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">日报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_Ads_Month_Depict.aspx?AdsID=<%=AdsID%>&amp;AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">月报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" align="center" background="../Images/ads/Adstoobar-1.GIF"><font color="#ffffff"><strong>IP报表</strong></font></td>
									<td width="1" height="26"><img src="../Images/ads/Adstoobar-4.GIF" width="2" height="26"></td>
									<td width="165" height="26">&nbsp;&nbsp;
									</td>
								</tr>
							</table>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top"><table width="500" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#f6f6f6"
								id="Table2">
								<tr valign="middle">
									<td height="16" colspan="11" background="../Images/ads/Adstoobar_down.gif"><strong><font color="#ffffff">
												[<asp:Label id="AdsName" runat="server" ForeColor="White" Font-Bold="True"></asp:Label>] 
												－ IP报表 </font></strong>
									</td>
								</tr>
								<asp:Repeater ID="list_ip" Runat="server">
									<ItemTemplate>
										<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
											this.style.cursor='hand'>
											<td width="80" align="right" style="padding-right:5px "><%#DataBinder.Eval(Container.DataItem,"AccessIP")%></td>
											<td colspan="10" style="padding-left:5px "><img src="../images/Ads/point_left.gif" height="12" title='IP：<%#DataBinder.Eval(Container.DataItem,"AccessIP")%> 查看广告次数：<%#DataBinder.Eval(Container.DataItem,"total")%>' width='<%#string.Format("{0:F2}",Convert.ToDouble(DataBinder.Eval(Container.DataItem,"total"))/maxtotal*200)%>'></td>
										</tr>
									</ItemTemplate>
								</asp:Repeater>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td width="80" align="right" style="PADDING-RIGHT:5px"></td>
									<td width="51" style="PADDING-LEFT:5px"><%=string.Format("{0:F0}",maxtotal*0.2)%></td>
									<td width="51" style="PADDING-LEFT:5px"><%=string.Format("{0:F0}",maxtotal*0.4)%></td>
									<td width="51" style="PADDING-LEFT:5px"><%=string.Format("{0:F0}",maxtotal*0.6)%></td>
									<td width="51" style="PADDING-LEFT:5px"><%=string.Format("{0:F0}",maxtotal*0.8)%></td>
									<td width="51" style="PADDING-LEFT:5px"><%=maxtotal%></td>
									<td width="200">&nbsp;</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="11" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'><TABLE width="500" height="120" border="0" align="center" cellPadding="0" cellSpacing="0">
											<tr>
												<td height="1" colspan="3"><img src="../images/ads/more.gif" width="23" height="19" align="absMiddle">根据指定时间范围查询报表：</td>
											</tr>
											<tr>
												<td width="87" height="1">
													<asp:RadioButton id="All" runat="server" Text="所有" GroupName="Condition" Checked="True"></asp:RadioButton>
												</td>
												<td width="325">&nbsp;
													<asp:RadioButton id="Today" runat="server" Text="今天" GroupName="Condition"></asp:RadioButton></td>
												<td width="88" height="1">&nbsp;</td>
											</tr>
											<tr>
												<td height="1" colspan="2"><asp:RadioButton id="Spec" runat="server" Text="指定日期范围：" GroupName="Condition"></asp:RadioButton>
													<asp:TextBox id="stime" runat="server" CssClass="form80" Width="72px" ReadOnly="True"></asp:TextBox>
													<INPUT class="button" name="ret" onclick="showCalendar(CalendarLayer,this.form.stime)"
														type="button" value="日期"> --&nbsp;
													<asp:TextBox id="etime" runat="server" CssClass="form80" Width="72px" ReadOnly="True"></asp:TextBox>
													<INPUT class="button" name="ret" onclick="showCalendar(CalendarLayer,this.form.etime)"
														type="button" value="日期">
												</td>
												<td height="1"><asp:Button ID="submit" runat="server" Text="查看报表" CssClass="button" Height="27px" Width="64px"></asp:Button></td>
											</tr>
											<tr>
												<td height="1" colspan="2">&nbsp;
												</td>
												<td height="1" align="right">&nbsp; &nbsp;
												</td>
											</tr>
										</TABLE>
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
