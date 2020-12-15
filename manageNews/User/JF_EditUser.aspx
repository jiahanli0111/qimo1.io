<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Page CodeBehind="JF_EditUser.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.User.JF_EditUser" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<TITLE>编辑用户 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="WIDTH: 115px" border="0"></TD>
									<TD vAlign="bottom" align="left" width="100%" height="10"></TD>
									<TD></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE id="Table7" cellSpacing="0" width="95%" align="center" border="0">
					<TR>
						<TD colSpan="3"><SPAN class="tdtoptitle">编辑用户信息</SPAN></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="center" colSpan="3" height="20">&nbsp;</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><u>用户名</u></TD>
						<TD class="td_heading">&nbsp;
							<asp:textbox id="UserName" runat="server" MaxLength="10"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><u>昵称</u></TD>
						<TD class="td_heading">&nbsp;
							<asp:textbox id="NickName" runat="server" MaxLength="20"></asp:textbox></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD class="td_heading" width="19%"><u>密码</u></TD>
						<TD class="td_heading" width="76%">&nbsp;
							<asp:textbox id="UserPwd" runat="server" MaxLength="20" TextMode="Password"></asp:textbox>
							<asp:Label id="modifypwd" runat="server" ForeColor="Red" Visible="False">密码不修改请留空</asp:Label></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD class="td_heading" width="19%"><u>确认密码</u></TD>
						<TD class="td_heading" width="76%">&nbsp;
							<asp:textbox id="con_UserPwd" runat="server" MaxLength="20" TextMode="Password"></asp:textbox></TD>
					</TR>
					<asp:Panel ID="permission" Runat="server">
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><U>类型</U><BR>
							<FONT color="#c0c0c0">管理员:拥有系统的最高权限<BR>
								用户:由管理员指安权限</FONT></TD>
						<TD class="td_heading">&nbsp; 
						    <input id="Purview1" onclick="CheckPurview()" type="radio" CHECKED value="true" name="IsAdmin" <%if(g_IsAdmin=="True") Response.Write("checked");%>>
							管理员<input id="Purview2" onclick="CheckPurview()" type="radio" value="false" name="IsAdmin" <%if(g_IsAdmin=="False") Response.Write("checked");%>>用户</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" width="5%" height="7"></TD>
						<TD class="td_heading" width="19%"><u>新闻状态</u></TD>
						<TD class="td_heading" width="76%">&nbsp;<asp:CheckBox id="NewsState" runat="server" Text="添加新闻审核状态默认通过"></asp:CheckBox></TD>
					</TR>
					<tr align="center">
						<TD align="right" width="5%" height="7"></TD>
						<TD width="19%"></TD>
						<td>
							<table width="100%" border="0" cellspacing="1" cellpadding="0" id="Purview2" style="<%=style%>">
								<tr>
									<td width="12%" align="right" class="td_heading"><u>栏目权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="category|add" <%if(g_SystemSet.IndexOf("category|add")!=-1) Response.Write("checked");%>>新建栏目 <input type="checkbox" name="SystemSet" value="category|modify" <%if(g_SystemSet.IndexOf("category|modify")!=-1) Response.Write("checked");%>>修改栏目
										<input type="checkbox" name="SystemSet" value="category|del" <%if(g_SystemSet.IndexOf("category|del")!=-1) Response.Write("checked");%>>删除栏目
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" valign="top" class="td_heading"><u>新闻权限</u></td>
									<td width="88%" class="td_heading">
									        <input type="checkbox" name="SystemSet" value="news|rewrite" <%if(g_SystemSet.IndexOf("news|rewrite")!=-1) Response.Write("checked");%>>重写新闻
										<input type="checkbox" name="SystemSet" value="review|rewrite" <%if(g_SystemSet.IndexOf("review|rewrite")!=-1) Response.Write("checked");%>>重写评论<br>

										<input type="checkbox" name="SystemSet" value="news|today" <%if(g_SystemSet.IndexOf("news|today")!=-1) Response.Write("checked");%>>今日更新的新闻<br>
										<input type="checkbox" name="SystemSet" value="news|todaynotauditing" <%if(g_SystemSet.IndexOf("news|todaynotauditing")!=-1) Response.Write("checked");%>>今日未审核新闻<br>
										<input type="checkbox" name="SystemSet" value="news|allauditing" <%if(g_SystemSet.IndexOf("news|allauditing")!=-1) Response.Write("checked");%>>所有未审核新闻<br>

										<b>操作本人录入的新闻权限</b><br>
										<input type="checkbox" name="SystemSet" value="news|add" <%if(g_SystemSet.IndexOf("news|add")!=-1) Response.Write("checked");%>>录入新闻 <input type="checkbox" name="SystemSet" value="news|auditing" <%if(g_SystemSet.IndexOf("news|auditing")!=-1) Response.Write("checked");%>>审核新闻
										<input type="checkbox" name="SystemSet" value="news|modify" <%if(g_SystemSet.IndexOf("news|modify")!=-1) Response.Write("checked");%>>修改新闻<br>
										<input type="checkbox" name="SystemSet" value="news|unaumodifyed" <%if(g_SystemSet.IndexOf("news|unaumodifyed")!=-1) Response.Write("checked");%>>新闻修改后状态为未审核 <input type="checkbox" name="SystemSet" value="news|del" <%if(g_SystemSet.IndexOf("news|del")!=-1) Response.Write("checked");%>>删除新闻
										<input type="checkbox" name="SystemSet" value="news|move" <%if(g_SystemSet.IndexOf("news|move")!=-1) Response.Write("checked");%>>转移新闻<br>
										<b>操作他人录入的新闻权限</b><br>
										<input type="checkbox" name="SystemSet" value="news|he|auditing" <%if(g_SystemSet.IndexOf("news|he|auditing")!=-1) Response.Write("checked");%>>审核新闻 <input type="checkbox" name="SystemSet" value="news|he|modify" <%if(g_SystemSet.IndexOf("news|he|add")!=-1) Response.Write("checked");%>>修改新闻
										<input type="checkbox" name="SystemSet" value="news|he|unaumodifyed" <%if(g_SystemSet.IndexOf("news|he|unaumodifyed")!=-1) Response.Write("checked");%>>新闻修改后状态为未审核<br>
										<input type="checkbox" name="SystemSet" value="news|he|del" <%if(g_SystemSet.IndexOf("news|he|del")!=-1) Response.Write("checked");%>>删除新闻 <input type="checkbox" name="SystemSet" value="news|he|move" <%if(g_SystemSet.IndexOf("news|he|move")!=-1) Response.Write("checked");%>>转移新闻
										<br>
										<input ID="ShowCategory" type="checkbox" onclick="CheckShowCategory()"><font color="red">显示栏目</font></A><br>
										<span id="ShowCategory" style="DISPLAY: none">
											<asp:Repeater id="list_category" runat="server">
												<ItemTemplate>
													<input type=checkbox name="CategoryID" value='<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>' <%#selcat(g_CategoryID,DataBinder.Eval(Container.DataItem,"CategoryID").ToString())%>>
													<%# JFCmsEnterprise.inc.list_category_space(DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%><%# JFCmsEnterprise.inc.list_category_first(DataBinder.Eval(Container.DataItem,"CategoryName").ToString(),DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%>
													<br>
												</ItemTemplate>
											</asp:Repeater></span>
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>采集权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="gather|add" <%if(g_SystemSet.IndexOf("gather|add")!=-1) Response.Write("checked");%>>采集规则增加
										<input type="checkbox" name="SystemSet" value="gather|modify" <%if(g_SystemSet.IndexOf("gather|modify")!=-1) Response.Write("checked");%>>采集规则修改
										<input type="checkbox" name="SystemSet" value="gather|del" <%if(g_SystemSet.IndexOf("gather|del")!=-1) Response.Write("checked");%>>采集规则删除
										<input type="checkbox" name="SystemSet" value="gather|get" <%if(g_SystemSet.IndexOf("gather|get")!=-1) Response.Write("checked");%>>新闻采集
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>模板权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="templet|add" <%if(g_SystemSet.IndexOf("templet|add")!=-1) Response.Write("checked");%>>新建模板
										<input type="checkbox" name="SystemSet" value="templet|modify" <%if(g_SystemSet.IndexOf("templet|modify")!=-1) Response.Write("checked");%>>修改模板
										<input type="checkbox" name="SystemSet" value="templet|del" <%if(g_SystemSet.IndexOf("templet|del")!=-1) Response.Write("checked");%>>删除模板

									</td>
								</tr>								
								<tr>
									<td width="12%" align="right" class="td_heading"><u>专题权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="subject|addcategory" <%if(g_SystemSet.IndexOf("subject|addcategory")!=-1) Response.Write("checked");%>>新建专题类别
										<input type="checkbox" name="SystemSet" value="subject|modifycategory" <%if(g_SystemSet.IndexOf("subject|modifycategory")!=-1) Response.Write("checked");%>>修改专题类别
										<input type="checkbox" name="SystemSet" value="subject|delcategory" <%if(g_SystemSet.IndexOf("subject|delcategory")!=-1) Response.Write("checked");%>>删除专题类别<br>
										<input type="checkbox" name="SystemSet" value="subject|add" <%if(g_SystemSet.IndexOf("subject|add")!=-1) Response.Write("checked");%>>新建专题 <input type="checkbox" name="SystemSet" value="subject|modify" <%if(g_SystemSet.IndexOf("subject|modify")!=-1) Response.Write("checked");%>>修改专题
										<input type="checkbox" name="SystemSet" value="subject|del" <%if(g_SystemSet.IndexOf("subject|del")!=-1) Response.Write("checked");%>>删除专题 <input type="checkbox" name="SystemSet" value="subject|update" <%if(g_SystemSet.IndexOf("subject|update")!=-1) Response.Write("checked");%>>更新专题
										<input type="checkbox" name="SystemSet" value="subject|news" <%if(g_SystemSet.IndexOf("subject|news")!=-1) Response.Write("checked");%>>管理专题新闻
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>专题权限</u></td>
									<td width="88%" class="td_heading">
										<input type=checkbox name=SystemSet value="ads|addcategory" <%if(g_SystemSet.IndexOf("ads|addcategory")!=-1) Response.Write("checked");%>>新建广告类别
										<input type=checkbox name=SystemSet value="ads|modifycategory" <%if(g_SystemSet.IndexOf("ads|modifycategory")!=-1) Response.Write("checked");%>>修改广告类别
										<input type=checkbox name=SystemSet value="ads|delcategory" <%if(g_SystemSet.IndexOf("ads|delcategory")!=-1) Response.Write("checked");%>>删除广告类别<br>
										<input type=checkbox name=SystemSet value="ads|add" <%if(g_SystemSet.IndexOf("ads|add")!=-1) Response.Write("checked");%>>新建广告
										<input type=checkbox name=SystemSet value="ads|modify" <%if(g_SystemSet.IndexOf("ads|modify")!=-1) Response.Write("checked");%>>修改广告
										<input type=checkbox name=SystemSet value="ads|del" <%if(g_SystemSet.IndexOf("ads|del")!=-1) Response.Write("checked");%>>删除广告
										<input type=checkbox name=SystemSet value="ads|show" <%if(g_SystemSet.IndexOf("ads|show")!=-1) Response.Write("checked");%>>查看广告报表
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>其它权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="other|index" <%if(g_SystemSet.IndexOf("other|index")!=-1) Response.Write("checked");%>>修改首页模板
										<input type="checkbox" name="SystemSet" value="other|setup" <%if(g_SystemSet.IndexOf("other|setup")!=-1) Response.Write("checked");%>>修改参数设置
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>系统管理权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="system|review" <%if(g_SystemSet.IndexOf("system|review")!=-1) Response.Write("checked");%>>评论管理 <input type="checkbox" name="SystemSet" value="system|file" <%if(g_SystemSet.IndexOf("system|file")!=-1) Response.Write("checked");%>>文件管理
										<input type="checkbox" name="SystemSet" value="system|url" <%if(g_SystemSet.IndexOf("system|url")!=-1) Response.Write("checked");%>>相关连接管理 
										<input type="checkbox" name="SystemSet" value="system|log" <%if(g_SystemSet.IndexOf("system|log")!=-1) Response.Write("checked");%>>日志管理
										<input type="checkbox" name="SystemSet" value="system|privatejs" <%if(g_SystemSet.IndexOf("system|privatejs")!=-1) Response.Write("checked");%>>自定义JS管理
										<br>
										<input type="checkbox" name="SystemSet" value="system|stat" <%if(g_SystemSet.IndexOf("system|stat")!=-1) Response.Write("checked");%>>新闻统计 <input type="checkbox" name="SystemSet" value="system|newssource" <%if(g_SystemSet.IndexOf("system|newssource")!=-1) Response.Write("checked");%>>新闻来源
										<input type="checkbox" name="SystemSet" value="system|refurbish" <%if(g_SystemSet.IndexOf("system|refurbish")!=-1) Response.Write("checked");%>>刷新新闻 <input type="checkbox" name="SystemSet" value="system|olupdate" <%if(g_SystemSet.IndexOf("system|olupdate")!=-1) Response.Write("checked");%>>在线升级
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>投票权限</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="vote|addvote" <%if(g_SystemSet.IndexOf("vote|addvote")!=-1) Response.Write("checked");%>>新建投票 <input type="checkbox" name="SystemSet" value="vote|modifyvote" <%if(g_SystemSet.IndexOf("vote|modifyvote")!=-1) Response.Write("checked");%>>修改投票
										<input type="checkbox" name="SystemSet" value="vote|delvote" <%if(g_SystemSet.IndexOf("vote|delvote")!=-1) Response.Write("checked");%>>删除投票
									</td>
								</tr>
								<tr>
									<td width="12%" align="right" class="td_heading"><u>密码</u></td>
									<td width="88%" class="td_heading">
										<input type="checkbox" name="SystemSet" value="user|modify"  <%if(g_SystemSet.IndexOf("user|modify")!=-1) Response.Write("checked");%>> <font color="red">
											可修改密码</font> 全选 <input type="checkbox" name="chkall" onclick="CheckAll(this.form)">
									</td>
								</tr>
							</table>
						</td>
					</tr>
					</asp:Panel>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD>&nbsp;</TD>
						<TD>&nbsp;</TD>
					</TR>
				</TABLE>
				<TABLE id="Table9" cellSpacing="0" width="95%" align="center" border="0">
					<TR class="category_menu">
						<TD width="9%" height="20"></TD>
						<TD width="91%"><asp:button id="u_add" runat="server" text="提交"></asp:button>&nbsp;&nbsp;
								<asp:button id="u_modify" runat="server" CausesValidation="False" Text="修改"></asp:button>&nbsp;
							<INPUT type="reset" value="还原" name="reset"></TD>
					</TR>
				</TABLE>
				
		</FONT>
		<script>
function CheckPurview(){
if (document.Form1.Purview2.checked == true) {
        Purview2.style.display = "";

}else{
        Purview2.style.display = "none";

}
}
function CheckShowCategory(){
if (document.Form1.ShowCategory.checked == true) {
        ShowCategory.style.display = "";

}else{
        ShowCategory.style.display = "none";

}
}
		</script>
	</body>
</HTML>
