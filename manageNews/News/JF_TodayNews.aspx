<%@ Page CodeBehind="JF_TodayNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_TodayNews" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>新闻管理 </title>
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
				<FIELDSET style="WIDTH: 100%" align="center"><LEGEND><B>今日更新新闻</B></LEGEND>
					<TABLE id="Table6" cellSpacing="0" cellPadding="1" width="100%" align="center" border="0">
						<TR>
							<TD colSpan="11" height="23">
								<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
									<tr>
									  <td width="483" height="25">&nbsp;&nbsp;</td>
										<td vAlign="middle" align="right" width="295">
											<asp:DropDownList id="Field" runat="server">
												<asp:ListItem Value="Title">标题</asp:ListItem>
												<asp:ListItem Value="Content">内容</asp:ListItem>
												<asp:ListItem Value="Depict">摘要</asp:ListItem>
												<asp:ListItem Value="InputUser">录入用户</asp:ListItem>
												<asp:ListItem Value="All">以上所有</asp:ListItem>
											</asp:DropDownList>&nbsp;
											<asp:TextBox id="key" runat="server" CssClass="form80"></asp:TextBox>
											<asp:button CssClass="button" id="p_search" runat="server" Text="搜索"></asp:button></td>
									</tr>
								</table>							</TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="11" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD width="57%" height="22" align="center" noWrap background="../images/tableheadingback.gif">标题</TD>
							<TD width="1%" align="center" valign="top" noWrap background="../images/tableheadingback.gif"><IMG src="../images/tableheadingsep.gif" width="6" height="17" align="top"></TD>
							<TD width="14%" noWrap background="../images/tableheadingback.gif">栏目</TD>
							<TD width="1%" align="center" valign="top" noWrap background="../images/tableheadingback.gif"
								style="HEIGHT: 18px"><IMG src="../images/tableheadingsep.gif" width="6" height="17"></TD>
							<TD width="5%" noWrap background="../images/tableheadingback.gif">录入用户</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="5%" background="../images/tableheadingback.gif">录入时间</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="5%" background="../images/tableheadingback.gif">评论</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="9%" background="../images/tableheadingback.gif">修改|删除</TD>
						</TR>
						<asp:repeater id="list_news" runat="server">
							<ItemTemplate>
								<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"><%#(bool)DataBinder.Eval(Container.DataItem,"TitleNews")?"<img src='../images/newstype/title.gif' align='absmiddle' title='标题新闻'>":""%><%#DataBinder.Eval(Container.DataItem,"PicPath").ToString()!=""?"<img src='../images/newstype/img.gif' align='absmiddle' title='图片新闻'>":""%><%#DataBinder.Eval(Container.DataItem,"Picdepict").ToString()!=""?"<img src='../images/newstype/depict.gif' align='absmiddle' title='摘要新闻'>":""%><%#(bool)DataBinder.Eval(Container.DataItem,"Recommend")?"<img src='../images/newstype/recommend.gif' align='absmiddle' title='推荐新闻'>":""%>
										<%#(bool)DataBinder.Eval(Container.DataItem,"TitleNews")?"<a href='"+DataBinder.Eval(Container.DataItem,"ObjUrl")+"' target=_blank>":"<a href='"+getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),true)+DataBinder.Eval(Container.DataItem,"DatePath")+"/"+DataBinder.Eval(Container.DataItem,"FileName")+"."+getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),false)+"' target=_blank>"%>
										<font color='<%#DataBinder.Eval(Container.DataItem,"TitleColor")%>'>
											<%#JFCmsEnterprise.inc.FilterString(DataBinder.Eval(Container.DataItem,"Title").ToString(),80,true,"...")%></font><font color="green">(评论：<%#DataBinder.Eval(Container.DataItem,"ReviewCount")%>)</font>
										</a>									</TD>
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"></TD>
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"><a href='JF_News_Main.aspx?CategoryID=<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>&CategoryName=<%#getCategoryName(DataBinder.Eval(Container.DataItem,"CategoryID").ToString())%>'><%#getCategoryName(DataBinder.Eval(Container.DataItem,"CategoryID").ToString())%></a></TD>
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"></TD>
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"><%#DataBinder.Eval(Container.DataItem,"InputUser")%></TD>
									<TD noWrap width="1%">&nbsp;</TD>
									<TD noWrap width="5%">
										<%#DataBinder.Eval(Container.DataItem,"InputDate","{0:yyy-MM-dd}")%></TD>
									<TD noWrap width="1%"></TD>
									<TD noWrap width="5%">
										<a href='javascript:' onclick='newwin("JF_ReviewManage.aspx?NewsID=<%#DataBinder.Eval(Container.DataItem,"NewsID")%>","review","700","620")'>
											评论管理</a></TD>
									<TD noWrap width="1%"></TD>
									<TD noWrap width="9%"><a href='JF_EditNews.aspx?CategoryID=<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>&NewsID=<%# DataBinder.Eval(Container.DataItem,"NewsID")%>&FromUrl=JF_TodayNews.aspx'>修改</a>|<a href='?action=DelNews&NewsID=<%# DataBinder.Eval(Container.DataItem,"NewsID")%>&DatePath=<%# DataBinder.Eval(Container.DataItem,"DatePath")%>&FileName=<%# DataBinder.Eval(Container.DataItem,"FileName")%>' onClick="return Del()">删除</a>|
										<input type="checkbox" name="delid" value='<%# DataBinder.Eval(Container.DataItem,"NewsID")%>' class='<%#JFCmsEnterprise.inc.audit_class(DataBinder.Eval(Container.DataItem,"Auditing").ToString())%>'></TD>
								</TR>
							</ItemTemplate>
							<SeparatorTemplate>
								<TR>
									<TD colSpan="11" height="1" background="../images/bg_line.gif"></TD>
								</TR>
							</SeparatorTemplate>
						</asp:repeater>
						<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
							<TD background="../images/bg_line.gif" colSpan="11" height="1"></TD>
						</TR>
					</TABLE>
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr vAlign="bottom" align="right">
							<td colSpan="2" height="27"><asp:dropdownlist id="category" runat="server"></asp:dropdownlist>
								<INPUT type="radio" value="move" ID="move" name="exe" title='转移新闻'><label for=move>转移</label> 
								<INPUT type="radio" value="del" id="del" name="exe" title='删除新闻'><label for=del>删除</label> 
								<INPUT type="radio" value="recrnews" id="recrnews" name="exe" title='重新生成新闻页面'><label for="recrnews">重写新闻</label> 
								<INPUT type="radio" value="recrreview" id="recrreview" name="exe" title='重新生成评论页面'><label for="recrreview">重写评论</label>
								<INPUT type="radio" value="unrecommend" id="unrecommend" name="exe" title='取消推荐新闻' checked><label for="unrecommend"><font color='red'>取消推荐</font></label>
								<INPUT type="radio" value="recommend" id="recommend" name="exe" title='推荐新闻' checked><label for="recommend"><font color='red'>推荐</font></label> 
								<INPUT type="radio" value="deaudit" id="deaudit" name="exe" title='取消通过审核新闻'><label for="deaudit">取消审核</label>
								<INPUT type="radio" value="audit" id="audit" name="exe" title='通过审核新闻' checked><label for="audit">审核</label>
								<asp:button CssClass="button" id="n_exe" runat="server" Text="执行"></asp:button>
								全选<input onClick="CheckAll(this.form)" type="checkbox" name="chkall">
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
