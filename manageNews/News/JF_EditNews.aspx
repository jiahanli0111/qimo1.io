<%@ Page CodeBehind="JF_EditNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_EditNews" %>
<%@ Register TagPrefix="fckeditorv2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>编辑新闻 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<FIELDSET style="WIDTH: 98%" align="center"><LEGEND><B>编辑新闻信息</B>
					</LEGEND>
					<TABLE id="Table7" cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
						<TR>
							<TD><SPAN class="tdtoptitle">基本信息</SPAN></TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD align="center" height="20">&nbsp;</TD>
						</TR>
					</TABLE>
					<TABLE id="Table7" cellSpacing="2" cellPadding="0" width="95%" align="center" border="0">
						<TR class="category_menu">
							<TD vAlign="top" width="51%">
								<table cellSpacing="0" cellPadding="2" width="100%" border="0">
									<tr>
										<td vAlign="top" width="17%"><u>标题</u></td>
										<td colSpan="3"><asp:textbox id="title" runat="server" MaxLength="100" Width="192px"></asp:textbox><!--#include file="titlecolor.asp"--></td>
									</tr>
									<tr id="tr_objurl" style="DISPLAY: none">
										<td vAlign="top" width="17%"><font color="red"><u>新闻连接</u></font></td>
										<td colSpan="3"><asp:textbox id="objurl" runat="server" MaxLength="100" Width="192px" Text="http://">http://</asp:textbox></td>
									</tr>
									<tr>
										<td vAlign="top"><U>点击量</U></td>
										<td><asp:textbox id="click" runat="server" MaxLength="50" Width="104px">0</asp:textbox></td>
										<td width="16%"><asp:checkbox id="audit" runat="server" Text="审核"></asp:checkbox></td>
										<td width="27%"><asp:checkbox id="TitleNews" runat="server" Text="标题新闻" ForeColor="Red"></asp:checkbox></td>
									</tr>
									<tr>
										<td vAlign="top"><U>录入时间</U></td>
										<td><asp:textbox id="inputdate" runat="server" MaxLength="50" Width="104px"></asp:textbox></td>
										<td width="16%"><asp:checkbox id="recommend" runat="server" Text="推荐"></asp:checkbox></td>
										<td width="27%"><asp:checkbox id="MorePro" runat="server" Text="更多属性"></asp:checkbox></td>
									</tr>
									<tr>
										<td vAlign="top"><U>作者</U></td>
										<td width="40%"><asp:textbox id="author" runat="server" MaxLength="50" Width="104px"></asp:textbox></td>
										<td id="td_notpage" colSpan="2"><asp:checkbox id="notpage" runat="server" Text="不分页"></asp:checkbox></td>
									</tr>
									<tr id="tr_templet">
										<td vAlign="top"><U>新闻模板</U></td>
										<td><asp:dropdownlist id="Templet" runat="server"></asp:dropdownlist><IMG height="12" src="../images/icon-help.gif" width="11"></td>
										<td colSpan="2"></td>
									</tr>
									<tr>
										<td vAlign="top"><u><strong>图片路径</strong></u></td>
										<td colSpan="3"><asp:textbox id="picpath" runat="server" Width="204px"></asp:textbox><a 
            style="CURSOR: hand" 
            onclick='newwin("../setup/JF_UpLoadFile.aspx?otype=picpath&amp;ThumbWidth=<%=ThumbWidth%>&amp;ThumbHeight=<%=ThumbHeight%>","UpFile","400","420")' 
            ><FONT color="#ff0000">上传图片</FONT></a></td>
									</tr>
									<tr id="tr_rate" style="DISPLAY: none">
										<td vAlign="top"><U>新闻等级</U></td>
										<td colSpan="3">
											<table cellSpacing="0" cellPadding="0" border="0">
												<tr>
													<td><asp:listbox id="list_NewsRateNot" title="未选专题" runat="server" SelectionMode="Multiple" Height="92px">
															<asp:ListItem Value=",1">级别一</asp:ListItem>
															<asp:ListItem Value=",2">级别二</asp:ListItem>
															<asp:ListItem Value=",3">级别三</asp:ListItem>
															<asp:ListItem Value=",4">级别四</asp:ListItem>
															<asp:ListItem Value=",5">级别五</asp:ListItem>
															<asp:ListItem Value=",6">级别六</asp:ListItem>
															<asp:ListItem Value=",7">级别七</asp:ListItem>
															<asp:ListItem Value=",8">级别八</asp:ListItem>
															<asp:ListItem Value=",9">级别九</asp:ListItem>
														</asp:listbox></td>
													<td><asp:button id="btn_RateAdd" runat="server" Width="22px" Text=">" ToolTip="添加所选级别"></asp:button><BR>
														<asp:button id="btn_RateAddAll" runat="server" Text=">>" ToolTip="增加所有级别"></asp:button><BR>
														<asp:button id="btn_RateDel" runat="server" Width="22px" Text="<" ToolTip="删除所选级别"></asp:button><BR>
														<asp:button id="btn_RateDelAll" runat="server" Text="<<" ToolTip="删除所有级别"></asp:button></td>
													<td><asp:listbox id="list_NewsRateSelect" runat="server" SelectionMode="Multiple" Height="93px"></asp:listbox></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</TD>
							<TD vAlign="top" width="49%">
								<TABLE cellSpacing="0" width="100%" border="0">
									<TR>
										<td vAlign="top" width="98"><u>幅标题</u></td>
										<td width="339"><asp:textbox id="stitle" runat="server" MaxLength="50"></asp:textbox><!--#include file="stitlecolor.asp"--></td>
									</TR>
									<tr>
										<td vAlign="top"><u>相关新闻<br>
												(关键字)</u></td>
										<td vAlign="top"><asp:textbox id="keyword" runat="server" MaxLength="50"></asp:textbox></td>
									</tr>
									<tr>
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"><U>内容来源</U></td>
										<td><asp:textbox id="source" runat="server" MaxLength="50" Width="104px"></asp:textbox><asp:dropdownlist id="oSource" runat="server"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"><U>责任编辑</U></td>
										<td><asp:textbox id="editer" runat="server" MaxLength="50" Width="104px"></asp:textbox><asp:dropdownlist id="oEditor" runat="server"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"
											width="98"><u><strong>新闻摘要</strong></u></td>
										<td><asp:textbox id="depict" runat="server" Width="211px" Height="62px" ToolTip="支持HTML语法" TextMode="MultiLine"></asp:textbox></td>
									</tr>
									<tr id="getcategory" style="DISPLAY: none" name="getcategory">
										<td style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word" vAlign="top"
											width="98"><u><strong>栏目</strong></u></td>
										<td><asp:dropdownlist id="rCategory" runat="server"></asp:dropdownlist></td>
									</tr>
								</TABLE>
							</TD>
						</TR>
					</TABLE>
					<table id="tab_subject" style="DISPLAY: none" cellSpacing="2" width="95%" align="center"
						border="0">
						<tr>
							<td vAlign="top" width="57"><u><strong>所属专题</strong></u></td>
							<td title="未选专题" width="4"><asp:listbox id="List_NotSubject" title="未选专题" runat="server" SelectionMode="Multiple" Height="92px"></asp:listbox></td>
							<td width="4"><asp:button id="a1" runat="server" Width="22px" Text=">" ToolTip="添加所选专题"></asp:button><br>
								<asp:button id="a2" runat="server" Text=">>" ToolTip="添加所有专题"></asp:button><br>
								<asp:button id="b1" runat="server" Width="22px" Text="<" ToolTip="删除所选专题"></asp:button><br>
								<asp:button id="b2" runat="server" Text="<<" ToolTip="删除所有专题"></asp:button></td>
							<td title="已选专题"><asp:listbox id="List_YesSubject" runat="server" SelectionMode="Multiple" Height="93px"></asp:listbox></td>
						</tr>
					</table>
					<TABLE cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
						<TR>
							<TD width="40%" height="35"><SPAN class="tdtoptitle">内容</SPAN></TD>
							<TD align="right" colSpan="6" height="35"><asp:button id="n_add" runat="server" Width="54px" Height="25px" text=" 添 加 "></asp:button><asp:button id="n_modify" runat="server" Width="54px" Text=" 修 改 " Height="25px"></asp:button>&nbsp;
								<INPUT style="WIDTH: 54px; HEIGHT: 25px" type="reset" value=" 还 原 " name="reset"></TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="8" height="1"></TD>
						</TR>
						<TR>
							<TD align="center" colSpan="8" height="6"></TD>
						</TR>
					</TABLE>
					<TABLE id="tab_content" cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
						<TR>
							<TD><FCKEDITORV2:FCKEDITOR id="Content" runat="server" Height="400px" BasePath="../Edit/" ToolbarSet="Default"></FCKEDITORV2:FCKEDITOR></TD>
						</TR>
						<tr>
							<td height="10"></td>
						</tr>
					</TABLE>
					<%=script%>
					<input type=hidden value="<%=r_filename%>" name=r_filename> <input type=hidden value="<%=r_datepath%>" name=r_datepath>
				</FIELDSET>
			</form>
		</FONT>
	</body>
</HTML>
