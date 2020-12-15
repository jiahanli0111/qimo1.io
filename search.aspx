<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Page language="c#" Codebehind="search.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.search" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>新闻搜索 Power by www.JFCms.net</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">
		HTML { PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px }
		BODY { FONT-SIZE: 12px; COLOR: #333333; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif }
		SELECT { FONT-SIZE: 12px; COLOR: #333333 }
		TEXTAREA { FONT-SIZE: 12px; COLOR: #333333 }
		INPUT { BORDER-TOP-STYLE: none; LINE-HEIGHT: 20px; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; HEIGHT: 20px; BORDER-BOTTOM-STYLE: none }
		BODY { MARGIN: 0px }
		FORM { MARGIN: 0px }
		A { FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #0000ce }
		A:visited { FONT-SIZE: 14px; COLOR: #518 }
		A:hover { FONT-SIZE: 14px; COLOR: #33f }
		.srch_btn { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-WEIGHT: bold; BACKGROUND: url(http://www.jfcms.net/Images/sbtnbk.gif) #54b81a repeat-x; PADDING-BOTTOM: 2px; WIDTH: 50px; COLOR: #fff; PADDING-TOP: 0px }
		</style>
	</HEAD>
	<body>
		<form id="Form1" runat="server">
			<table height="67" cellSpacing="0" width="100%" bgColor="#99cc66" border="0">
				<tr>
					<td width="7%" height="49"><img src="http://www.jfcms.net/Logo/JFsearchlogo.gif"></td>
					<td width="79%">&nbsp;
						<asp:TextBox id="top_txt" runat="server" Width="362px"></asp:TextBox><FONT face="宋体">&nbsp;</FONT>
						<asp:Button id="top_btn" runat="server" Width="50px" Text="搜索" CssClass="srch_btn"></asp:Button>
						<asp:CheckBox id="top_content" runat="server" Text="内容" ForeColor="White" Font-Bold="True"></asp:CheckBox>
					</td>
					<td vAlign="middle" align="center" width="14%"><a href="http://www.xunt.net" target="_blank"><img src="http://www.xunt.net/Logo/logo-88x31.gif" border="0"></a></td>
				</tr>
			</table>
			<table cellSpacing="0" width="100%" bgColor="#99cc66" border="0">
				<tr bgColor="#ffffff">
					<td align="right" width="97%" bgColor="#ffffff" height="27">约 <strong>
							<asp:Label id="Total" runat="server">0</asp:Label>
						</strong>项 第
						<asp:Label id="CurrentCount" runat="server"><b>1</b> - <b>20</b></asp:Label>
						<strong></strong>项 [用时
						<asp:Label id="UseTime" runat="server" Font-Bold="True">0</asp:Label>] 秒
					</td>
					<td width="3%">&nbsp;</td>
				</tr>
				<tr>
					<td colSpan="2" height="1"></td>
				</tr>
			</table>
			<asp:repeater id="list_news" runat="server">
				<ItemTemplate>
					<table width="95%" border="0" align="center" cellpadding="5" cellspacing="0" class="marg">
						<tr>
							<td valign="top" class="lh">
								<a  href="" target="_blank">
								<%#(bool)DataBinder.Eval(Container.DataItem,"TitleNews")?"<a href='"+DataBinder.Eval(Container.DataItem,"ObjUrl")+"' class='r' target=_blank>":"<a href='"+getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),true)+DataBinder.Eval(Container.DataItem,"DatePath")+"/"+DataBinder.Eval(Container.DataItem,"FileName")+"."+getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),false)+"' class='r' target=_blank>"%>
										<font color='<%#DataBinder.Eval(Container.DataItem,"TitleColor")%>'>
									<span class="resttl">
										<%#DelHtml(DataBinder.Eval(Container.DataItem,"Title").ToString())%>
									</span></a>
								<br>
								<font style="FONT-SIZE:13px" class="ressum">
									<%#JFCmsEnterprise.inc.FilterString(DelHtml(DataBinder.Eval(Container.DataItem,"Content").ToString()),300,true,"...")%>
								</font>
							</td>
						</tr>
						<tr>
							<td width="1" bgcolor="#99cc66"></td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:repeater>
			<br clear="all">
			<div align="center"><webdiyer:aspnetpager id="pager" runat="server" ShowInputBox="Never" AlwaysShow="True" PageSize="20" ShowBoxThreshold="0"
					UrlPaging="True" LastPageText="未页" NextPageText="下页" PrevPageText="上页" FirstPageText="首页" NumericButtonTextFormatString="[{0}]"
					ShowDisabledButtons="False" CustomInfoSectionWidth="  "></webdiyer:aspnetpager><br>
				<table height="67" cellSpacing="0" width="100%" bgColor="#99cc66" border="0">
					<tr>
						<td align="center" height="49">
							<asp:TextBox id="bot_txt" runat="server" Width="362px"></asp:TextBox>&nbsp;
							<asp:Button id="bot_btn" runat="server" CssClass="srch_btn" Width="50px" Text="搜索"></asp:Button>
							<asp:CheckBox id="bot_content" runat="server" Text="内容" ForeColor="White" Font-Bold="True"></asp:CheckBox>&nbsp;
							<asp:label id="copyinfo" runat="server"></asp:label></td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</HTML>
