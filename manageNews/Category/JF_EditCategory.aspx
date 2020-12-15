<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Page language="c#" Codebehind="JF_EditCategory.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Category.JF_EditCategory" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>编辑栏目 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">
		.STYLE2 { COLOR: #ff0000 }
		</style>
	</HEAD>
	<body leftMargin="0" topMargin="0" onLoad="load();">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">编辑栏目</SPAN></TD>
					</TR>
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
					</TR>
				</TABLE>
				<TABLE height="22" cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TBODY>
						<TR>
							<TD vAlign="top">
								<TABLE id="tb_content" cellSpacing="0" cellPadding="10" width="98%" align="center" border="0">
									<TBODY>
										<TR>
											<TD class="content" vAlign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="tab-on" id="navcell" onClick="switchCell(1)" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
																基本设置</TD>
															<TD class="tab-off" id="navcell" onClick="switchCell(2)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
																栏目首页模板</TD>
															<TD class="tab-off" id="navcell" onClick="switchCell(3)" name="navcell"><IMG height="16" src="../images/navbar_link.gif" width="16" align="absMiddle">
																栏目分页模板</TD>
															<TD class="tab-off" id="navcell" onClick="switchCell(4)" name="navcell"><IMG height="16" src="../images/navbar_awards.gif" width="16" align="absMiddle">
																新闻模板</TD>
															<TD class="tab-none" align="center">&nbsp;
																<asp:button id="add" runat="server" CssClass="button" Text="添加"></asp:button><asp:button id="modify" runat="server" CssClass="button" Text="修改"></asp:button>&nbsp;<INPUT class="button" type="reset" value="还原"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<table class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<tbody>
														<tr>
															<td class="td_heading" vAlign="top" colSpan="4">栏目基本设置</td>
														</tr>
														<tr>
															<td vAlign="top"><u>所属栏目</u></td>
															<td vAlign="top"><asp:dropdownlist id="ParentID" runat="server" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="pid" runat="server" ControlToValidate="ParentID">请选择栏目</asp:requiredfieldvalidator></td>
															<td colspan="2" vAlign="top">
																<asp:CheckBox id="AutoUpdate" runat="server" Text="自动更新栏目首页"></asp:CheckBox>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle"><font face="宋体">栏目新闻有变化时，系统自动更新栏目首页!<br>
																				<span class="STYLE2">注：如果添加新闻的速度变慢，请不要选择自动更新</span></font></td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>栏目名</u></td>
															<td vAlign="top" width="178"><asp:textbox id="CategoryName" runat="server" MaxLength="30"></asp:textbox><asp:requiredfieldvalidator id="cn" runat="server" ControlToValidate="CategoryName">请填写</asp:requiredfieldvalidator>
																<br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">栏目的名称，建议使用中文</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top" width="64"><u>目录名</u></td>
															<td vAlign="top" width="431"><asp:textbox id="CategoryPath" runat="server" MaxLength="20" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="cp" runat="server" ControlToValidate="CategoryPath">请填写</asp:requiredfieldvalidator>
																<br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">栏目目录名，建议使用数字或英文字母</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top" width="26">
																<p><u>物理目录</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="CategoryDir" runat="server" Width="408px"></asp:textbox><asp:requiredfieldvalidator id="cdir" runat="server" ControlToValidate="CategoryDir">请填写</asp:requiredfieldvalidator><asp:customvalidator id="checkdir" runat="server"></asp:customvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">栏目添加后，将在这目录里创建一个子目录 如您输入<span class="td_download_title">目录名</span>为 
																			news <span class="td_download_title">物理目录</span>您输入d:\www&nbsp; 
																			系统将在d:\www创建一个名为news的子目录&nbsp; c:\www\news&nbsp;
																			<BR>
																			<span class="text_note_red">注意：如果您是租用虚拟空间，请您在使用默认值或你填写您网站目录，请不要超出您网站的目录&nbsp; 
																				添加后本属性不能修改 </span>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<p><u>栏目域名</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="CategoryDomain" runat="server" ForeColor="Red" Width="408px">http://</asp:textbox><asp:requiredfieldvalidator id="cd" runat="server" ControlToValidate="CategoryDomain">请填写</asp:requiredfieldvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">栏目的所指向的域名。默认为当前的域名+栏目目录名 如您设置<span class="td_download_title">目录名</span>为news 
																			栏目新闻的访问路径 <a href="http://www.xunt.net/news/075200JF.shtml">http://www.xunt.net/news/075200JF.shtml</a>
																			<br>
																			如您设置了二级域名(<a href="http://news.xunt.net/">http://news.xunt.net/</a>)指名指向news栏目
																			<br>
																			您在域名里填写 <a href="http://news.xunt.com/">http://news.xunt.com/</a>&nbsp;那么news 
																			栏目新闻的访问路径<a href="http://news.xunt.com/075200.shtml">http://news.xunt.com/075200.shtml</a>
																			<br>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<p><u>扩展名</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="FileExt" runat="server" MaxLength="10">shtml</asp:textbox><asp:requiredfieldvalidator id="fe" runat="server" ControlToValidate="FileExt">请填写</asp:requiredfieldvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">生成新闻时，根据您的设置生成文件扩展名。如：htm、html、asp、shtml
																			<br>
																			注意：扩展最好一次填写，以后不要修改，因为您修改了扩展名，需要刷新本栏目下的所有新闻，此操作很耗废时间。 如您设置扩展名为shtml&nbsp; 
																			系统生成的文件075200.shtml
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<p><u>栏目分页大小</u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="PageSize" runat="server" MaxLength="10">30</asp:textbox><asp:requiredfieldvalidator id="ps" runat="server" ControlToValidate="PageSize">请填写</asp:requiredfieldvalidator>
																<asp:regularexpressionvalidator id="chkps" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="PageSize">请填写整数</asp:regularexpressionvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">此参数应用于栏目分页模板新闻列表显示数量。标签 JF:NewsCount 无效<BR>
																			如设置为30。栏目分页模板每页将显示30条新闻</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>更新子栏目模板</u></td>
															<td vAlign="top"><asp:checkbox id="UpdateSubCategory" runat="server" Text=" "></asp:checkbox><br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">应用此栏目的栏目分页模板、新闻模板到子栏目</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top"><u>缩略图高宽</u></td>
															<td vAlign="top">宽
																<asp:textbox id="ThumbWidth" runat="server" MaxLength="4" Width="40px">120</asp:textbox>高
																<asp:textbox id="ThumbHeight" runat="server" MaxLength="4" Width="40px">90</asp:textbox><asp:regularexpressionvalidator id="w" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="ThumbWidth">请填写整数</asp:regularexpressionvalidator><asp:regularexpressionvalidator id="h" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="ThumbHeight">请填写整数</asp:regularexpressionvalidator><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">系统生成缩略图的宽度与高度。<BR>
																			请填写整数 如 120 90</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td class="td_heading" vAlign="top" colSpan="4">栏目详细设置</td>
														</tr>
														<tr>
															<td vAlign="top"><u>栏目页面导航条</u></td>
															<td colspan="3" vAlign="top">
																<asp:textbox id="CatNavigation" runat="server" Width="423px" Height="88px" TextMode="MultiLine"></asp:textbox>
																<INPUT name="Button" onClick="runEx()" type="button" value="导航条预览">
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">导航条系统自动生成，您可以根据需要自行修改。</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>新闻页面导航条</u></td>
															<td colspan="3" vAlign="top">
																<asp:textbox id="NewsNavigation" runat="server" Width="432px" Height="88px" TextMode="MultiLine"></asp:textbox>
																<INPUT name="Button" onClick="runEx()" type="button" value="导航条预览">
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">导航条系统自动生成，您可以根据需要自行修改。</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>生成评议文件</u></td>
															<td vAlign="top"><asp:checkbox id="MarkReview" runat="server" Text=" " Checked="True"></asp:checkbox><br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">如果您不需要生成评议文件请去掉勾</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top"><u>生成栏目首页</u></td>
															<td vAlign="top"><asp:checkbox id="MarkIndex" runat="server" Text=" " Checked="True"></asp:checkbox><br>
																<table cellSpacing="0" width="100%" border="0">
																	<tr>
																		<td class="tdtoptitle">如果您不需要生成栏目栏目首页请去掉勾</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top"><u>个性化名称<br>
																	(可选项)</u></td>
															<td vAlign="top" colSpan="3">日期名：
																<asp:textbox id="DateNameInd" runat="server" MaxLength="15" Width="80px"></asp:textbox><asp:dropdownlist id="DateNameInd_Pos" runat="server">
																	<asp:ListItem Value="1">日期名前面</asp:ListItem>
																	<asp:ListItem Value="2">日期名后面</asp:ListItem>
																</asp:dropdownlist><br>
																文件名：
																<asp:textbox id="FileNameInd" runat="server" MaxLength="15" Width="80px"></asp:textbox><asp:dropdownlist id="FileNameInd_Pos" runat="server">
																	<asp:ListItem Value="1">文件名前面</asp:ListItem>
																	<asp:ListItem Value="2">文件名后面</asp:ListItem>
																</asp:dropdownlist><br>
																<table cellSpacing="0" width="100%" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			<p>日期名：系统按日期生成一个文件夹 如 20040423<br>
																				文件名：系统按时间生成一个文件&nbsp; 如 075200.htm<br>
																				如：<span class="td_download_title">日期名</span>输入：xunt&nbsp;<span class="td_download_title">选择日期名前面</span>&nbsp;&nbsp;
																				<span class="td_download_title">文件名</span>输入JF <span class="td_download_title">选择文件名后面</span><br>
																				系统生成的新闻将会是这种格式：<a href="http://www.youdomain.com/news/xunt20040423/075200JF.htm">www.youdomain.com/news/xunt20040423/075200JF.htm</a></p>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</tbody>
												</table>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">栏目首页模板  <a href='javascript:newwin("JF_SelectTemplet.aspx?TempletType=CatIndex","select",300,170)'><font color='red'>选择已有的模板</font></a></TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="CategoryIndexTemplet" runat="server" Width="576px" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onClick="runEx()" type="button" value="模板预览" class="button80"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">栏目分页模板  <a href='javascript:newwin("JF_SelectTemplet.aspx?TempletType=CatSub","select",300,170)'><font color='red'>选择已有的模板</font></a></TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="CategorySubPageTemplet" runat="server" Width="576px" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onClick="runEx()" type="button" value="模板预览" class="button80">
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">新闻模板  <a href='javascript:newwin("JF_SelectTemplet.aspx?TempletType=News","select",300,170)'><font color='red'>选择已有的模板</font></a></TD>
														</TR>
														<TR>
															<TD vAlign="top"><asp:textbox id="NewsTemplet" runat="server" Width="576px" TextMode="MultiLine" Height="476px"></asp:textbox><br>
																<INPUT name="Button" onClick="runEx()" type="button" value="模板预览" class="button80">
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
							<TD class="sidebar" vAlign="top">&nbsp;
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				</form>
		</FONT>
	</body>
</HTML>
