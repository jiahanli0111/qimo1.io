<%@ Page CodeBehind="JF_EditTask.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_EditTask" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<TITLE>编辑任务管理 </TITLE>
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
						<TD colSpan="3"><SPAN class="tdtoptitle">编辑计划任务</SPAN></TD>
					</TR>
					<TR bgColor="#808080">
						<TD bgColor="#cccccc" colSpan="3" height="1"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="center" colSpan="3" height="10"></TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><u>任务类型</u></TD>
						<TD width="88%" class="td_heading">
						<INPUT type="checkbox" value="News" name="TaskType" <%if(TaskType.IndexOf("News")!=-1) Response.Write("checked");%>>新闻 
							<INPUT type="checkbox" value="Review" name="TaskType" <%if(TaskType.IndexOf("Review")!=-1) Response.Write("checked");%>>评论 
							<INPUT type="checkbox" value="IndexCategory" name="TaskType" <%if(TaskType.IndexOf("IndexCategory")!=-1) Response.Write("checked");%>>栏目首页 
							<INPUT type="checkbox" value="SubCategory" name="TaskType" <%if(TaskType.IndexOf("SubCategory")!=-1) Response.Write("checked");%>>栏目分页<br>
							<INPUT type="checkbox" value="SiteIndex" name="TaskType" <%if(TaskType.IndexOf("SiteIndex")!=-1) Response.Write("checked");%>>网站首页 
							<INPUT type="checkbox" value="Subject" name="TaskType" <%if(TaskType.IndexOf("Subject")!=-1) Response.Write("checked");%>>专题 
							<INPUT type="checkbox" value="PrivateJS" name="TaskType" <%if(TaskType.IndexOf("PrivateJS")!=-1) Response.Write("checked");%>> 自定义JS
						</TD>
					</TR>
					<TR class="category_menu">
						<TD align="right" height="20">&nbsp;</TD>
						<TD class="td_heading"><u>执行时间</u></TD>
						<TD class="td_heading"><img src='' width="5"><asp:DropDownList id="TaskTime" runat="server">
								<asp:ListItem Value="00">0时</asp:ListItem>
								<asp:ListItem Value="01">1时</asp:ListItem>
								<asp:ListItem Value="02">2时</asp:ListItem>
								<asp:ListItem Value="03">3时</asp:ListItem>
								<asp:ListItem Value="04">4时</asp:ListItem>
								<asp:ListItem Value="05">5时</asp:ListItem>
								<asp:ListItem Value="06">6时</asp:ListItem>
								<asp:ListItem Value="07">7时</asp:ListItem>
								<asp:ListItem Value="08">8时</asp:ListItem>
								<asp:ListItem Value="09">9时</asp:ListItem>
								<asp:ListItem Value="10">10时</asp:ListItem>
								<asp:ListItem Value="11">11时</asp:ListItem>
								<asp:ListItem Value="12">12时</asp:ListItem>
								<asp:ListItem Value="13">13时</asp:ListItem>
								<asp:ListItem Value="14">14时</asp:ListItem>
								<asp:ListItem Value="15">15时</asp:ListItem>
								<asp:ListItem Value="16">16时</asp:ListItem>
								<asp:ListItem Value="17">17时</asp:ListItem>
								<asp:ListItem Value="18">18时</asp:ListItem>
								<asp:ListItem Value="19">19时</asp:ListItem>
								<asp:ListItem Value="20">20时</asp:ListItem>
								<asp:ListItem Value="21">21时</asp:ListItem>
								<asp:ListItem Value="22">22时</asp:ListItem>
								<asp:ListItem Value="23">23时</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<asp:Panel ID="permission" Runat="server">
						<TR align="center">
							<TD align="right" width="5%" height="7"></TD>
							<TD width="7%"></TD>
							<TD>
								<TABLE id="Purview2" cellSpacing="1" cellPadding="0" width="100%" border="0">
									<TR>
										<TD class="td_heading" width="88%">
											<asp:Repeater id="list_category" runat="server">
												<ItemTemplate>
													<input type=checkbox name="CategoryID" value='<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>' <%#selcat(TCategoryID,DataBinder.Eval(Container.DataItem,"CategoryID").ToString())%>>
													<%# JFCmsEnterprise.inc.list_category_space(DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%><%# JFCmsEnterprise.inc.list_category_first(DataBinder.Eval(Container.DataItem,"CategoryName").ToString(),DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%>
													<br>
												</ItemTemplate>
											</asp:Repeater></TD>
									</TR>
									<TR>
										<TD class="td_heading" colSpan="2"><INPUT onclick="CheckAll(this.form)" type="checkbox" name="chkall">
											全选</TD>
									</TR>
								</TABLE>
							</TD>
						</TR>
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
						<TD width="91%"><asp:button id="btn_TaskAdd" runat="server" text="提交"></asp:button>
							<asp:button id="btn_TaskModify" runat="server" CausesValidation="False" Text="修改" Visible="False"></asp:button>&nbsp;
							<INPUT type="reset" value="还原" name="reset"></TD>
					</TR>
				</TABLE>
				</form>
		</FONT>
	</body>
</HTML>
