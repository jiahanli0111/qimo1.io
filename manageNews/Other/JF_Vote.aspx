<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../Include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../Include/top.ascx" %>
<%@ Page language="c#" Codebehind="JF_Vote.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Other.JF_Vote" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ͶƱ����  </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript" charset="gb2312" src="../include/js/JFCms.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<uc1:top id="Top1" runat="server"></uc1:top>
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
										height="24"><SPAN class="tdtoptitle">ͶƱ����</SPAN></TD>
									<TD><IMG height="23" src="../images/rightcorner.gif" width="21"></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<table width="95%" border="0" align="center" cellspacing="0">
					<tr>
						<td width="43%" valign="top">
							<asp:Panel ID="add" Runat="server">
								<TABLE cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
									<TR>
										<TD colSpan="2" height="23"><STRONG>����ͶƱ</STRONG></TD>
									</TR>
									<TR bgColor="#cccccc">
										<TD colSpan="2" height="1"></TD>
									</TR>
									<TR>
										<TD width="30%" height="23"><U>����</U><BR>
											<FONT color="#c0c0c0">ͶƱ����</FONT></TD>
										<TD width="70%" height="23"><INPUT class="form80" type="text" maxLength="30" name="VoteTitle"></TD>
									</TR>
									<TR>
										<TD height="23"><U>ͶƱ��ʽ</U><BR>
											<FONT color="#c0c0c0">����ͶƱ��ѡ������Ϊ��ѡ���ѡ</FONT></TD>
										<TD height="23"><INPUT type="radio" value="radio" name="Votetype" checked> ��ѡ <INPUT type="radio" value="checkbox" name="Votetype">
											��ѡ
										</TD>
									</TR>
									<TR>
										<TD height="23"><U>����ѡ������</U><BR>
											<FONT color="#c0c0c0">���ô˴�ͶƱ����ѡ�������</FONT></TD>
										<TD height="23"><INPUT class="form80" type="text" size="4" value="4" name="opcount">
											<INPUT class="button" onclick="setoper();" type="button" value="�趨" name="Button">
										</TD>
									</TR>
									<TR>
										<TD id="opid" align="center" colSpan="2"><U>ѡ��1</U> <INPUT class="form80" type="text" maxLength="50" name="VoteOper">
											<U>Ʊ��</U> <INPUT class="form80" type="text" maxLength="10" size="5" value="0" name="StatCount">
										</TD>
									</TR>
									<TR align="center">
										<TD colSpan="2" height="46">
											<asp:Button id="v_add" runat="server" Height="23px" CssClass="button" Text=" �� �� " Width="48px"></asp:Button>&nbsp;
											<INPUT class="button" style="WIDTH: 45px; HEIGHT: 23px" type="reset" value=" �� д "></TD>
									</TR>
								</TABLE>
							</asp:Panel>
							<asp:Panel ID="modify" Runat="server" Visible="False">
								<TABLE cellSpacing="1" cellPadding="0" width="98%" bgColor="#ffffff" border="0">
									<TR>
										<TD colSpan="2" height="23"><STRONG>�޸�ͶƱ</STRONG></TD>
									</TR>
									<TR bgColor="#cccccc">
										<TD colSpan="2" height="1"></TD>
									</TR>
									<TR>
										<TD width="30%" height="23"><U>����</U><BR>
											<FONT color="#c0c0c0">ͶƱ����</FONT></TD>
										<TD width="70%" height="23">
											<asp:TextBox id="VoteTitle" Runat="server" CssClass="form80"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD height="23"><U>ͶƱ��ʽ</U><BR>
											<FONT color="#c0c0c0">����ͶƱ��ѡ������Ϊ��ѡ���ѡ</FONT></TD>
										<TD height="23">										
										<INPUT type="radio" value="radio" name="Votetype" <%if(VoteType=="radio"){Response.Write("CHECKED");}%>> ��ѡ 
										<INPUT type="radio" value="checkbox" name="Votetype" <%if(VoteType=="checkbox"){Response.Write("CHECKED");}%>> ��ѡ
										</TD>
									</TR>
									<asp:Repeater id="list_oldoper" Runat="server">
										<ItemTemplate>
											<TR>
												<TD align="center" colSpan="2"><U>ѡ��</U> <input type="hidden" name="OldID" size="5" class="form80" value='<%#DataBinder.Eval(Container.DataItem,"ID")%>'>
													<INPUT class="form80" type="text" maxLength="50" name="OldVoteOper" value='<%#DataBinder.Eval(Container.DataItem,"VoteOper")%>'>
													<U>Ʊ��</U> <INPUT class="form80" type="text" maxLength="10" size="5" value='<%#DataBinder.Eval(Container.DataItem,"StatCount")%>' name="OldStatCount">
												</TD>
											</TR>
										</ItemTemplate>
									</asp:Repeater>
									<TR>
										<TD height="23"><U>����ѡ������</U><BR>
											<FONT color="#c0c0c0">���ô˴�ͶƱ����ѡ�������</FONT></TD>
										<TD height="23"><INPUT class="form80" type="text" size="4" value="4" name="opcount">
											<INPUT class="button" onclick="setoper();" type="button" value="�趨" name="Button">
										</TD>
									</TR>
									<TR>
										<TD id="opid" align="center" colSpan="2"><U>ѡ��1</U> <INPUT class="form80" type="text" maxLength="50" name="VoteOper">
											<U>Ʊ��</U> <INPUT class="form80" type="text" maxLength="10" size="5" value="0" name="StatCount">
										</TD>
									</TR>
									<TR align="center">
										<TD colSpan="2" height="46">
											<asp:Button id="v_modify" runat="server" Height="23px" CssClass="button" Text=" �� �� " Width="48px"></asp:Button>&nbsp;
											<INPUT class="button" style="WIDTH: 45px; HEIGHT: 23px" onclick="window.location.href='JF_Vote.aspx'"
												type="button" value=" �� �� "></TD>
									</TR>
								</TABLE>
							</asp:Panel>
							<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#ffffff">
								<tr>
									<td height="23" colspan="2"><strong>��ȡͶƱ���ô���</strong></td>
								</tr>
								<tr bgcolor="#cccccc">
									<td height="1" colspan="2"></td>
								</tr>
								<tr>
									<td width="16%" height="23"><u>ͶƱ����</u><br>
									</td>
									<td width="84%" height="23">
										<asp:DropDownList id="remotecode" runat="server"></asp:DropDownList></td>
								</tr>
								<tr>
									<td height="23"><u>���ô���</u><br>
									</td>
									<td height="23"><textarea name="code" cols="40" rows="5" class="form80"><script src='<%=VotePath%>'></script></textarea>
									</td>
								</tr>
								<tr align="center">
									<td height="23" colspan="2">&nbsp;
									</td>
								</tr>
							</table>
						</td>
						<td width="57%" valign="top">
							<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
								<TR>
									<TD colSpan="13" height="8"></TD>
								</TR>
								<TR bgColor="#808080">
									<TD bgColor="#cccccc" colSpan="13" height="1"></TD>
								</TR>
								<TR class="category_menu">
									<TD noWrap width="53" background="../images/tableheadingback.gif"><img src="" width="5" height="0">ID</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="207" noWrap background="../images/tableheadingback.gif">����</TD>
									<TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="60" noWrap background="../images/tableheadingback.gif">��Ʊ��</TD>
									<TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="46" noWrap background="../images/tableheadingback.gif">���</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="66" noWrap background="../images/tableheadingback.gif">����ʱ��</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="33" noWrap background="../images/tableheadingback.gif">�޸�</TD>
									<TD noWrap width="6" background="../images/tableheadingback.gif" valign="top"><IMG height="17" src="../images/tableheadingsep.gif" width="6" valign="top"></TD>
									<TD width="35" noWrap background="../images/tableheadingback.gif">ɾ��</TD>
								</TR>
								<asp:repeater id="list_vote" runat="server">
									<ItemTemplate>
										<TR class="category_menu" bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#E6F5FA'"
											onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD noWrap width="53"><img src="" width="5" height="0">
												<%#DataBinder.Eval(Container.DataItem,"VoteClassID")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"Title")%>
											</TD>
											<TD noWrap>&nbsp;</TD>
											<TD noWrap><%#DataBinder.Eval(Container.DataItem,"CountVote")%></TD>
											<TD noWrap>&nbsp;</TD>
											<TD noWrap><%#(DataBinder.Eval(Container.DataItem,"type").ToString())=="checkbox"?"��ѡ":"��ѡ"%></TD>
											<TD noWrap width="6"></TD>
											<TD noWrap>
												<%#DataBinder.Eval(Container.DataItem,"DateAndTime","{0:yyyy/MM/dd}")%>
											</TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='?action=modify&VoteClassID=<%# DataBinder.Eval(Container.DataItem,"VoteClassID")%>'>�޸�</a></TD>
											<TD noWrap width="6"></TD>
											<TD noWrap><a href='?action=del&VoteClassID=<%# DataBinder.Eval(Container.DataItem,"VoteClassID")%>' onclick="return Del()">ɾ��</a></TD>
										</TR>
										<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
											<TD colSpan="13" height="1" background="../images/bg_line.gif"></TD>
										</TR>
									</ItemTemplate>
								</asp:repeater>
							</TABLE>
							<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<webdiyer:AspNetPager id="pager" runat="server" PageSize="40" ShowCustomInfoSection="Right" Width="128px"
											AlwaysShow="True"></webdiyer:AspNetPager>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				 
			</form>
		</FONT>
		<script language="javascript">
setoper();
		</script>
	</body>
</HTML>
