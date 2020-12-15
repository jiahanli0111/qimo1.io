<%@ Page CodeBehind="JF_Setup.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_Setup" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>参数设置 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">.style2 { COLOR: #ff0000 }
		</style>
	</HEAD>
	<body leftMargin="0" topMargin="0" onload="load();">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3" height="10"></TD>
					</TR>
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">参数设置</SPAN></TD>
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
								<TABLE id="tb_content" cellSpacing="0" cellPadding="10" width="90%" align="center" border="0">
									<TBODY>
										<TR>
											<TD class="content" vAlign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD class="tab-on" id="navcell" onclick="switchCell(1)" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
																基本设置</TD>
															<TD class="tab-off" id="navcell" onclick="switchCell(2)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
																&nbsp;评论模板</TD>
															<TD class="tab-off" id="navcell" onclick="switchCell(3)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
																&nbsp;新闻页评论模板</TD>
															<TD class="tab-none" align="right">
																<asp:button id="btn_StopFullTxt" runat="server" Text="删除全文索引" CssClass="button" Width="80px"></asp:button>
																<asp:button id="btn_StartFullTxt" runat="server" Text="建立全文索引" CssClass="button" Width="80px"></asp:button>&nbsp;<asp:button id="s_modify" runat="server" CssClass="button" Text="修改"></asp:button>&nbsp;<INPUT class="button" type="reset" value="还原"></TD>
														</TR>
													</TBODY>
												</TABLE>
												<table class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<tbody>
														<tr>
															<td class="td_heading" vAlign="top" colSpan="4">系统基本设置</td>
														</tr>
														<tr>
															<td width="119" vAlign="top"><u>您的域名:</u></td>
															<td vAlign="top">
																<asp:textbox id="YourDomain" runat="server" MaxLength="30" CssClass="form80" Width="216px"></asp:textbox></td>
															<td vAlign="top"><u><span class="style2">注册号:</span></u></td>
															<td vAlign="top"><asp:textbox id="RegisterNO" runat="server" MaxLength="30" CssClass="form80" Width="216px"></asp:textbox></td>
														</tr>
														<tr>
															<td vAlign="top"><u><U>上传文件大小</U></u></td>
															<td vAlign="top" width="229"><asp:textbox id="FileSize" runat="server" MaxLength="30" CssClass="form80"></asp:textbox>
																<br>
																<table cellSpacing="0" width="98%" border="0">
																	<tr>
																		<td class="tdtoptitle">允许上传的文件大小，单位为（KB）</td>
																	</tr>
																</table>
															</td>
															<td vAlign="top" width="82"><u><U>上传文件类型</U></u></td>
															<td vAlign="top" width="282"><asp:textbox id="FileType" runat="server" CssClass="form80" Width="208px"></asp:textbox>
																<br>
																<table cellSpacing="0" width="91%" border="0">
																	<tr>
																		<td class="tdtoptitle">请填写扩展名以“,”隔开</td>
																	</tr>
																</table>
															</td>
														</tr>
														<!--
														<tr>
															<td vAlign="top" width="104">
																<p><u><U>每页新闻字数</U></u>
																	<br>
																</p>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="PageWordCount" runat="server" Width="329px" CssClass="form80"></asp:textbox><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			<span class="text_note_red">自动将超过字数的新闻进行分页 </span>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														-->
														<tr>
															<td vAlign="top">
																<u>图片新闻标志:</u>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="PhotoNews" runat="server" ForeColor="Red" Width="336px" CssClass="form80"></asp:textbox><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">显示在新闻的标题后面，支持HTML
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>评论过滤字符:</u>
															</td>
															<td vAlign="top" colSpan="3"><asp:textbox id="FiltrationWord" runat="server" Width="336px" CssClass="form80"></asp:textbox><br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">
																			多个字符请用&nbsp;“,” 隔开
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>文件编码:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:dropdownlist id="CharSet" runat="server">
																	<asp:ListItem Value="gb2312" Selected="True">简体中文(gb2312)</asp:ListItem>
																	<asp:ListItem Value="big5">繁体中文(big5)</asp:ListItem>
																	<asp:ListItem Value="utf-8">Unicode(utf-8)</asp:ListItem>
																</asp:dropdownlist>
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">系统生成新闻的编码方式。一般情况下建议您选择gb2312编码!</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>搜索间隔时间:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:TextBox id="SearchTime" runat="server" CssClass="form80" MaxLength="5" Width="56px"></asp:TextBox>秒
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">防止恶意利用搜索功能消耗服务器资源! 建议设置60秒</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>启用全文检索:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:dropdownlist id="SearchFullTxt" runat="server">
																	<asp:ListItem Value="true" Selected="True">启用</asp:ListItem>
																	<asp:ListItem Value="false">禁用</asp:ListItem>
																</asp:dropdownlist>
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">启用全文检索可以提高新闻搜索速度！禁用全文检索时系统自动采取普通搜索方式</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td vAlign="top">
																<u>远程图片保存图库:</u><br>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:dropdownlist id="SaveFid" runat="server"></asp:dropdownlist>
																<br>
																<table cellSpacing="0" width="100%" align="right" border="0">
																	<tr>
																		<td class="tdtoptitle">请选择已有图库作为保存远程图片的目录，不需要保存远程图片，请选择“不保存”</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td height="38" vAlign="top"><u>图片水印:</u>
															</td>
															<td vAlign="top" colSpan="3">
																<asp:RadioButton id="WordWatermark" runat="server" Text="文字水印" GroupName="watermark"></asp:RadioButton>
																<asp:RadioButton id="ImgWatermark" runat="server" Text="图片水印" GroupName="watermark" Checked="True"></asp:RadioButton>
																<asp:RadioButton id="NotWate" runat="server" Text="不加水印" GroupName="watermark"></asp:RadioButton>
																<table width="100%" border="0" cellspacing="0" cellpadding="0">
																	<TBODY>
																		<tr>
																			<td bgcolor="#cccccc"></td>
																		</tr>
																		<tr id="tr_WordWatermark" style="DISPLAY:none">
																			<td>
																				输入图片水印的文字：
																				<asp:TextBox id="WatermarkWord" runat="server" CssClass="form80" MaxLength="30"></asp:TextBox></td>
																		</tr>
																		<tr id="tr_ImgWatermark">
																			<td><img src='../images/watermark/watermark.gif'><a style="CURSOR: hand" onclick='newwin("../setup/JF_UpLoadFile.aspx?otype=watermark","u","400","180")'>上传水印文件</a></td>
																		</tr>
																		<%=script%>
																	</TBODY>
																</table>
															</td>
														</tr>
													</tbody>
												</table>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">评论模板</TD>
														</TR>
														<TR>
															<TD vAlign="top"><font color="#c0c0c0">
																	<asp:textbox id="ReviewTemplet" runat="server" Width="100%" TextMode="MultiLine" Height="476px"></asp:textbox><INPUT class="button80" onclick="runEx()" type="button" value="模板预览" name="Button">
																</font>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
													name="tb">
													<TBODY>
														<TR>
															<TD class="td_heading" vAlign="top">新闻页面评论模板<BR>
																<font color='red'>此模板主要用于在新闻页面里显示最新的评论</font></TD>
														</TR>
														<TR>
															<TD vAlign="top"><font color="#c0c0c0">
																	<asp:textbox id="NewsReviewTemplet" runat="server" Width="100%" TextMode="MultiLine" Height="476px"></asp:textbox><INPUT class="button80" onclick="runEx()" type="button" value="模板预览" name="Button">
																</font>
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
