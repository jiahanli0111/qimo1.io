<%@ Page CodeBehind="JF_RefurNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_RefurNews" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>刷新新闻 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
		<script language="javascript" charset="gb2312" src="../include/js/date.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
	<form id="Form1" method="post" runat="server">
		<TABLE id="Table4" cellSpacing="0" width="98%" align="center" border="0">
                  <TR>
                    <TD><TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
                        <TR>
                          <TD border="0">&nbsp;</TD>
                          <TD vAlign="bottom" align="left" width="100%"><span class="tdtoptitle">刷新新闻</span></TD>
                          <TD>&nbsp;</TD>
                        </TR>
                        <TR bgColor="#cccccc">
                          <TD colSpan="3" height="1" border="0"></TD>
                        </TR>
                        <TR>
                          <TD colSpan="3" height="6" border="0"></TD>
                        </TR>
                    </TABLE></TD>
                  </TR>
                </TABLE>
		<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>
                      <TABLE width="50%" border="1" cellPadding="0" cellSpacing="0" bordercolor="#f7f7f7" id="Table6">
                        <TR>
                          <TD height="8"></TD>
                        </TR>
                        <TR>
                          <TD height="25" class="td_heading">刷新类型</TD>
                        </TR>
                        <TR>
                          <TD height="25" class="td_heading"><input type="checkbox" name="reType" value="1" checked>
                            新闻
                            <input type="checkbox" name="reType" value="5">
                            评论
                            <input type="checkbox" name="reType" value="2">
                            栏目首页
                            <input type="checkbox" name="reType" value="3" checked>
                            栏目分页
                            <input type="checkbox" name="reType" value="4">
                            网站首页 </TD>
                        </TR>
                        <TR>
                          <TD height="25" class="td_heading">刷新新闻时间</TD>
                        </TR>
                        <TR>
                          <TD height="27" class="td_heading"><INPUT class="form80" name="stime" size="10" readonly>
                              <INPUT class="button" name="ret" onClick="showCalendar(CalendarLayer,this.form.stime)"
								type="button" value="日期">
                            --
                            <INPUT class="form80" name="etime" size="10" readonly>
                            <INPUT class="button" name="ret" onClick="showCalendar(CalendarLayer,this.form.etime)"
								type="button" value="日期"></TD>
                        </TR>
                        <TR>
                          <TD height="25" class="td_heading">指定刷新栏目</TD>
                        </TR>
                        <TR>
                          <TD height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <asp:Repeater id="list_category" runat="server">
                                <ItemTemplate>
                                  <tr>
                                    <td width="10"></td>
                                    <td width="20" align="center"><input type="checkbox" name="CategoryID" value='<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>'>
                                    </td>
                                    <td width="605"><%# JFCmsEnterprise.inc.list_category_space(DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%> <%# JFCmsEnterprise.inc.list_category_first(DataBinder.Eval(Container.DataItem,"CategoryName").ToString(),DataBinder.Eval(Container.DataItem,"CompriseCategoryCount").ToString())%> </td>
                                  </tr>
                                  <TR>
                                    <TD colSpan="3" height="1" background="../images/bg_line.gif"></TD>
                                  </TR>
                                </ItemTemplate>
                              </asp:Repeater>
                              <TR height="25">
                                <td width="10"></td>
                                <td width="20" align="center"><input type="checkbox" name="chkall" onClick="CheckAll(this.form)"></td>
                                <TD><font color="green">选中所有</font></TD>
                              </TR>
                              <TR height="40">
                                <TD colSpan="3"><P align="center">
                                    <asp:Button id="s_refurnews" runat="server" Text="刷 新 新 闻" Width="148px" Height="32px"></asp:Button>
                                </P></TD>
                              </TR>
                          </table></TD>
                        </TR>
                      </TABLE>
                    </td>
                  </tr>
                </table><br>
	</form>
	</body>
</HTML>
