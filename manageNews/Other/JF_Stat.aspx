<%@ Page CodeBehind="JF_Stat.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Other.JF_Stat" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>责任编辑 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
		<script language="javascript" src="../include/js/date.js" charset="gb2312"></script>
        <style type="text/css">
<!--
.style2 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
        </style>
</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD>
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD border="0">&nbsp;</TD>
									<TD vAlign="bottom" align="left" width="100%"><SPAN class="tdtoptitle">新闻统计</SPAN></TD>
									<TD>&nbsp;</TD>
								</TR>
								<TR bgcolor="#cccccc">
									<TD height="1" colspan="3" border="0"></TD>
								</TR>
								<TR>
									<TD height="6" colspan="3" border="0"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table cellSpacing="0" width="95%" align="center" border="0">
					<tr>
						<td align="center" vAlign="top">
							<table width="500" border="1" align="left" cellpadding="0" cellspacing="0" bordercolor="#f7f7f7"
								style="PADDING-LEFT:5px">
								<tr align="center">
									<td width="14%" height="23" rowspan="3" align="left" valign="middle" onMouseOver="this.style.backgroundColor='#FAFBFC';"
										onMouseOut="this.style.backgroundColor='';" this.style.cursor='hand'>统计条件:</td>
									<td width="86%" height="33" align="left" onMouseOver="this.style.backgroundColor='#FAFBFC';"
										onMouseOut="this.style.backgroundColor='';" this.style.cursor='hand'><u>汇总条件</u>&nbsp;
										<asp:DropDownList id="Otype" runat="server">
											<asp:ListItem Value="InputUser">录入人员</asp:ListItem>
											<asp:ListItem Value="Source">新闻来源</asp:ListItem>
										</asp:DropDownList>
										<u>栏目</u>&nbsp;
										<asp:DropDownList id="Category" runat="server"></asp:DropDownList></td>
								</tr>
								<tr align="center">
									<td height="33" align="left" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';"
										this.style.cursor='hand'>
										<u>时间范围</u>&nbsp;
										<asp:TextBox id="stime" runat="server" Width="80px" CssClass="form80" ReadOnly="True"></asp:TextBox>
										<INPUT class="button" name="ret" onclick="showCalendar(CalendarLayer,this.form.stime)"
											type="button" value="日期"> --
										<asp:TextBox id="etime" runat="server" Width="80px" CssClass="form80" ReadOnly="True"></asp:TextBox>
										<INPUT class="button" name="ret" onclick="showCalendar(CalendarLayer,this.form.etime)"
											type="button" value="日期">&nbsp;
										<asp:CheckBox id="AllDate" runat="server" Text="所有时间" Checked="True"></asp:CheckBox>
									</td>
								</tr>
								<tr align="center">
									<td height="33" align="right" style="PADDING-RIGHT:5px">
										<asp:Button id="s_submit" runat="server" CssClass="button" Text="统计"></asp:Button>&nbsp;
										<input name="reset" type="reset" class="button" value="还原"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center" vAlign="top"><table width="500" border="1" align="left" cellpadding="0" cellspacing="0" bordercolor="#f7f7f7"
								style="PADDING-LEFT:5px">
								<tr align="center" bgcolor="#A6BCFF">
									<td width="244" height="25" valign="middle"><span class="style2"> 汇总类型 </span></td>
									<td width="250" valign="middle"><span class="style2"> 总数</span></td>
								</tr>
								<asp:Repeater ID="list_stat" Runat="server">
									<ItemTemplate>
										<tr align="center" onMouseOver="this.style.backgroundColor='#FAFBFC';" onMouseOut="this.style.backgroundColor='';" this.style.cursor='hand'>
											<td height="25" align="left" valign="middle"><%#DataBinder.Eval(Container.DataItem,"otype")%></td>
											<td align="left" valign="middle"><%#DataBinder.Eval(Container.DataItem,"total")%></td>
										</tr>
									</ItemTemplate>
								</asp:Repeater>
							</table>
						</td>
					</tr>
				</table>
			</form>
		</FONT>
	</body>
</HTML>
