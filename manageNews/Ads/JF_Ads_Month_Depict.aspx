<%@ Page CodeBehind="JF_Ads_Month_Depict.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_Ads_Month_Depict" %>
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
									<td width="65" height="26" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_AdsDepict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">概况</font></a></td>
									<td width="3" background="../Images/ads/Adstoobar-1.GIF"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" height="26" align="center" valign="middle" background="../Images/ads/Adstoobar-2.GIF"><a href="JF_Ads_Hour_Depict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>"><font color="#000000">时报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" height="26" align="center" background="../Images/ads/Adstoobar-2.GIF"><a href='JF_Ads_Day_Depict.aspx?AdsID=<%=AdsID%>&AdsCategoryID=<%=AdsCategoryID%>'><font color="#000000">日报表</font></a></td>
									<td width="3"><img src="../Images/ads/Adstoobar-3.GIF" width="3" height="26"></td>
									<td width="65" align="center" background="../Images/ads/Adstoobar-1.GIF"><font color="#ffffff"><strong>月报表</strong></font></td>
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
												－ 月报表 </font></strong>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td colspan="2"><table width="100%" border="0" align="center" cellspacing="0">
											<tr valign="bottom">
												<td width="25" align="center" valign="top" bgcolor="#f7f7f7" style="TABLE-LAYOUT:fixed; WORD-BREAK:break-all; WORD-WRAP:break-word"><%=maxshowcount%></td>
												<asp:Repeater ID="list_month_show" Runat="server">
													<ItemTemplate>
														<td rowspan="4" align="center">
															<img src="../images/Ads/point_top.gif" width="14" height='2' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 显示量：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<img src="../images/Ads/point.gif" width='14' height='<%#DataBinder.Eval(Container.DataItem,"Width")%>' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 显示量：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<img src="../images/Ads/point_bottom.gif" width="14" height='2' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 显示量：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<%#DataBinder.Eval(Container.DataItem,"month")%>
															<br>
														</td>
													</ItemTemplate>
												</asp:Repeater>
												<td rowspan="4" valign="top">图表说明：<br>
													<strong>显示次数 </strong>－时段
												</td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7"><%=string.Format("{0:F0}",(maxshowcount*0.6))%></td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7"><%=string.Format("{0:F0}",(maxshowcount*0.3))%></td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										&nbsp;<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">以上统计数据为实时数据
										<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">查看具体统计数字可将鼠标置于条型图上方。
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td colspan="2">
										<table width="100%" border="0" align="center" cellspacing="0">
											<tr valign="bottom">
												<td width="25" align="center" valign="top" bgcolor="#f7f7f7" style="TABLE-LAYOUT:fixed; WORD-BREAK:break-all; WORD-WRAP:break-word"><%=maxclickcount%></td>
												<asp:Repeater ID="list_month_click" Runat="server">
													<ItemTemplate>
														<td rowspan="4" align="center">
															<img src="../images/Ads/point_top.gif" width="14" height='2' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 点击量：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<img src="../images/Ads/point.gif" width='14' height='<%#DataBinder.Eval(Container.DataItem,"Width")%>' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 点击量：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<img src="../images/Ads/point_bottom.gif" width="14" height='2' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 点击量：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<%#DataBinder.Eval(Container.DataItem,"month")%>
															<br>
														</td>
													</ItemTemplate>
												</asp:Repeater>
												<td rowspan="4" valign="top">图表说明：<br>
													<strong>点击次数 </strong>－时段
												</td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7"><%=string.Format("{0:F0}",(maxclickcount*0.6))%></td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7"><%=string.Format("{0:F0}",(maxclickcount*0.3))%></td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										&nbsp;<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">以上统计数据为实时数据
										<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">查看具体统计数字可将鼠标置于条型图上方。
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td colspan="2">
										<table width="100%" border="0" align="center" cellspacing="0">
											<tr valign="bottom">
												<td width="25" align="center" valign="top" bgcolor="#f7f7f7" style="TABLE-LAYOUT:fixed; WORD-BREAK:break-all; WORD-WRAP:break-word"><%=string.Format("{0:F0}",maxaverage*100)%>%</td>
												<asp:Repeater ID="list_month_average" Runat="server">
													<ItemTemplate>
														<td rowspan="4" align="center">
															<img src="../images/Ads/point_top.gif" width="14" height='2' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 点击率：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<img src="../images/Ads/point.gif" width='14' height='<%#DataBinder.Eval(Container.DataItem,"Width")%>' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 点击率：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<img src="../images/Ads/point_bottom.gif" width="14" height='2' title='(<%#DataBinder.Eval(Container.DataItem,"month")%>月) 点击率：<%#DataBinder.Eval(Container.DataItem,"total")%>'><br>
															<%#DataBinder.Eval(Container.DataItem,"month")%>
															<br>
														</td>
													</ItemTemplate>
												</asp:Repeater>
												<td rowspan="4" valign="top">图表说明：<br>
													<strong>显示次数 </strong>－时段
												</td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7"><%=string.Format("{0:F0}",(maxaverage*0.6)*100)%>%</td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7"><%=string.Format("{0:F0}",(maxaverage*0.3)*100)%>%</td>
											</tr>
											<tr valign="bottom">
												<td align="center" bgcolor="#f7f7f7">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										&nbsp;<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">以上统计数据为实时数据
										<img src="../Images/ads/exclaim.gif" width="16" height="15" align="absMiddle">查看具体统计数字可将鼠标置于条型图上方。
									</td>
								</tr>
								<tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
									this.style.cursor='hand'>
									<td height="30" colspan="2" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'><TABLE width="500" height="120" border="0" align="center" cellPadding="0" cellSpacing="0">
											<tr>
												<td height="1" colspan="3"><img src="../images/ads/more.gif" width="23" height="19" align="absMiddle">根据指定时间范围查询报表：</td>
											</tr>
											<tr>
												<td width="87" height="1">
													<asp:RadioButton id="All" runat="server" Text="所有" GroupName="Condition" Checked="True"></asp:RadioButton>
												</td>
												<td width="325">&nbsp;
													<asp:RadioButton id="CurrentYear" runat="server" Text="今年" GroupName="Condition"></asp:RadioButton></td>
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
