<%@ Page CodeBehind="JF_User.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.User.JF_User" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>用户管理 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top>
				<uc1:Top_Menu id="Top_Menu1" runat="server"></uc1:Top_Menu>
				<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
					<TR>
						<TD height="24">
							<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="WIDTH: 115px" border="0"></TD>
									<TD vAlign="bottom" align="left" height="10"></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD border="0"><IMG height="23" src="../images/leftcorner.gif" width="23"></TD>
									<TD vAlign="bottom" align="left" width="100%" background="../images/backheading.gif"
										height="24"><SPAN class="tdtoptitle">用户管理</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				
  <TABLE id="Table6" cellSpacing="0" cellPadding="0" width="80%" align="center" border="0">
    <TR> 
      <TD colSpan="13" height="8"></TD>
    </TR>
    <TR bgColor="#808080"> 
      <TD bgColor="#cccccc" colSpan="13" height="1"></TD>
    </TR>
    <TR class="category_menu"> 
      <TD noWrap width="34" background="../images/tableheadingback.gif"><img src="" width="5" height="0">ID</TD>
      <TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
      <TD width="129" noWrap background="../images/tableheadingback.gif">用户名</TD>
      <TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
      <TD width="124" noWrap background="../images/tableheadingback.gif">用户昵称</TD>
      <TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
      <TD width="81" noWrap background="../images/tableheadingback.gif">用户类别</TD>
      <TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
      <TD width="125" noWrap background="../images/tableheadingback.gif">增加时间</TD>
      <TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
      <TD width="55" noWrap background="../images/tableheadingback.gif">修改用户</TD>
      <TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
      <TD width="58" noWrap background="../images/tableheadingback.gif">删除用户</TD>
    </TR>
    <asp:repeater id="list_user" runat="server"> 
      <ItemTemplate> 
        <TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
								onMouseOut="this.style.backgroundColor='#FFFFFF'"> 
          <TD noWrap width="34"><img src="" width="5" height="0"> 
            <%#DataBinder.Eval(Container.DataItem,"UserID")%>
          </TD>
          <TD noWrap width="6"></TD>
          <TD noWrap> 
            <%#DataBinder.Eval(Container.DataItem,"UserName")%>
          </TD>
          <TD noWrap>&nbsp;</TD>
          <TD noWrap> 
            <%#DataBinder.Eval(Container.DataItem,"NickName")%>
          </TD>
          <TD noWrap>&nbsp;</TD>
          <TD noWrap> 
			<%#((bool)DataBinder.Eval(Container.DataItem,"IsAdmin"))?"管理员":"用户"%>
          </TD>
          <TD noWrap width="6"></TD>
          <TD noWrap> 
            <%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd  HH:mm}")%>
          </TD>
          <TD noWrap width="6"></TD>
          <TD noWrap><a href='JF_EditUser.aspx?action=md&UserID=<%# DataBinder.Eval(Container.DataItem,"UserID")%>'>修改</a></TD>
          <TD noWrap width="6"></TD>
          <TD noWrap><a href='JF_User.aspx?action=del&UserID=<%# DataBinder.Eval(Container.DataItem,"UserID")%>' onclick="return Del()">删除</a></TD>
        </TR>
        <TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'"> 
          <TD colSpan="13" height="1" background="../images/bg_line.gif"></TD>
        </TR>
      </ItemTemplate>
    </asp:repeater>
  </TABLE>
				<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<webdiyer:AspNetPager id="pager" runat="server" PageSize="40" ShowCustomInfoSection="Right" Width="128px"></webdiyer:AspNetPager>
						</td>
					</tr>
				</table>
				
			</form>
		</FONT>
	</body>
</HTML>