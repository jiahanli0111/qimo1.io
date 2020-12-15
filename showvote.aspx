<%@ Page language="c#" Codebehind="showvote.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.showvote" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title><%=Title%></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<style type="text/css"> 
		TD { FONT-SIZE: 14px } 
		P { FONT-SIZE: 12px } 
		LI { FONT-SIZE: 12px } 
		SELECT { FONT-SIZE: 12px } 
		INPUT { FONT-SIZE: 12px } 
		.l13 { LINE-HEIGHT: 130% } 
		.l15 { LINE-HEIGHT: 150% } 
		.f14 { FONT-SIZE: 14px } 
		.fl { FONT-SIZE: 14px; LINE-HEIGHT: 130% } 
		A:hover { COLOR: #ff0000 } 
		.style1 { COLOR: #ffffff } 
		body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></HEAD>
	<body>
		<FONT face="宋体">
			<form id="Form1" method="post" runat="server">
				<table width="357" border="0" align="center" cellspacing="0">
					<tr valign="middle" bgcolor="#ffffff">
						<td height="30">
							<%=Title%>
							共有<asp:Label id="Total" runat="server" ForeColor="Red"></asp:Label>人参加</td>
					</tr>
				</table>
				<table width="357" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#738fe6">
					<tr valign="middle" bgcolor="#738fe6">
						<td width="18" height="19" align="center"><span class="style1"></span></td>
						<td width="131" align="center"><span class="style1"><strong>选项</strong></span></td>
						<td width="165" align="center"><span class="style1"><strong>比例</strong></span></td>
						<td width="38" align="center"><span class="style1"><strong>票数</strong></span></td>
					</tr>
					<asp:Repeater ID="list_vote" Runat="server">
						<ItemTemplate>
							<tr valign="middle" bgcolor="#ffffff">
								<td align="center" bgcolor="#ffffff"><font color="#0099ff" size="2"><%#Container.ItemIndex+1%></font></td>
								<td height="23" bgcolor="#ffffff" style="padding-left:5px "><font color="#0099ff" size="2"><%#DataBinder.Eval(Container.DataItem,"VoteOper")%></font></td>
								<td style="padding-left:5px;padding-right:5px "><table border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td width='<%#Convert.ToDouble(DataBinder.Eval(Container.DataItem,"StatCount"))/maxcount*200%>' height="10" bgcolor="#738fe6"></td>
										</tr>
									</table>
								</td>
								<td align="center" bgcolor="#ffffff"><font color="#0099ff" size="2"><%#DataBinder.Eval(Container.DataItem,"StatCount")%></font></td>
							</tr>
						</ItemTemplate>
					</asp:Repeater>
				</table>
			</form>
		</FONT>
	</body>
</HTML>
