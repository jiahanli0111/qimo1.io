<%@ Page CodeBehind="JF_SNewsMain.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_SNewsMain" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>专题管理  </title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<FIELDSET style="WIDTH: 100%" align="center"><LEGEND><B>专题管理</B></LEGEND>
					<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
						<TR>
							<TD colSpan="10" height="23">
								<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
									<tr>
										<td width="483" height="25">
											<INPUT class="button80" onclick='window.location="JF_EditSNews.aspx?SpecialtyID=<%=SpecialtyID%>"' type="button"
												value="添加专题">
										</td>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="10" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD width="60%" align="center" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px">标题</TD>
							<TD width="1%" align="center" valign="top" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD width="12%" noWrap background="../images/tableheadingback.gif" style="HEIGHT: 18px">新闻</TD>
							<TD style="HEIGHT: 18px" vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="13%" background="../images/tableheadingback.gif">录入时间</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD colspan="2" noWrap background="../images/tableheadingback.gif">修改|删除</TD>
						</TR>
						<asp:repeater id="list_snews" runat="server">
							<ItemTemplate>
								<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word">&nbsp;&nbsp;
										<a href='<%#DataBinder.Eval(Container.DataItem,"WebPath")%><%# DataBinder.Eval(Container.DataItem,"FileName")%>.<%# DataBinder.Eval(Container.DataItem,"FileExt")%>' target="_blank">
											<%#DataBinder.Eval(Container.DataItem,"Title")%>
										</a>
									</TD>
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word">&nbsp;</TD>
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"><a href="javascript:" onclick="newwin('JF_SubjectNews.aspx?SpecialtyNewsID=<%# DataBinder.Eval(Container.DataItem,"SpecialtyNewsID")%>','subject',550,500)">所属专题新闻</a></TD>
									<TD noWrap width="1%">&nbsp;</TD>
									<TD noWrap width="13%">
										<%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyy日MM月dd日}")%>
									</TD>
									<TD noWrap width="1%"></TD>
									<TD noWrap width="7%"><a href='JF_EditSNews.aspx?action=modify&SpecialtyID=<%=SpecialtyID%>&SpecialtyNewsID=<%# DataBinder.Eval(Container.DataItem,"SpecialtyNewsID")%>'>修改</a>|<a href='?action=del&SpecialtyID=<%=SpecialtyID%>&SpecialtyNewsID=<%# DataBinder.Eval(Container.DataItem,"SpecialtyNewsID")%>' onclick="return Del()">删除</a>|										</TD>
								    <TD noWrap width="5%"><input type="checkbox" name="delid" value='<%# DataBinder.Eval(Container.DataItem,"SpecialtyNewsID")%>'></TD>
								</TR>
							</ItemTemplate>
							<SeparatorTemplate>
								<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
									<TD colSpan="10" height="1" background="../images/bg_line.gif"></TD>
								</TR>
							</SeparatorTemplate>
						</asp:repeater>
						<TR class="category_menu" onmouseover="this.style.backgroundColor='#E6F5FA'" onmouseout="this.style.backgroundColor='#FFFFFF'">
							<TD background="../images/bg_line.gif" colSpan="10" height="1"></TD>
						</TR>
					</TABLE>
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr vAlign="bottom" align="right">
							<td colSpan="2" height="27">&nbsp; <INPUT type="radio" value="del" name="exe" title='删除新闻'>
								删除专题 <INPUT type="radio" value="rewrite" name="exe" title='重新生成新闻页面' CHECKED> 重写专题&nbsp;
								<asp:button class="button" id="s_exe" runat="server" Text="执行"></asp:button>全选 <input onclick="CheckAll(this.form)" type="checkbox" name="chkall">
							</td>
						</tr>
						<tr>
							<td width="55%">
								<webdiyer:AspNetPager id="pager" runat="server" PageSize="25" ShowCustomInfoSection="Right" AlwaysShow="True"
									ShowInputBox="Always"></webdiyer:AspNetPager></td>
							<td width="45%"></td>
						</tr>
					</table>
				</FIELDSET>
			</form>
		</FONT>
	</body>
</HTML>
