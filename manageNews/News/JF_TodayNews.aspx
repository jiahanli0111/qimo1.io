<%@ Page CodeBehind="JF_TodayNews.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.News.JF_TodayNews" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>���Ź��� </title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../include/js/JFCms.js" charset="gb2312"></script>
	</HEAD>
	<body topMargin="0">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<FIELDSET style="WIDTH: 100%" align="center"><LEGEND><B>���ո�������</B></LEGEND>
					<TABLE id="Table6" cellSpacing="0" cellPadding="1" width="100%" align="center" border="0">
						<TR>
							<TD colSpan="11" height="23">
								<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
									<tr>
									  <td width="483" height="25">&nbsp;&nbsp;</td>
										<td vAlign="middle" align="right" width="295">
											<asp:DropDownList id="Field" runat="server">
												<asp:ListItem Value="Title">����</asp:ListItem>
												<asp:ListItem Value="Content">����</asp:ListItem>
												<asp:ListItem Value="Depict">ժҪ</asp:ListItem>
												<asp:ListItem Value="InputUser">¼���û�</asp:ListItem>
												<asp:ListItem Value="All">��������</asp:ListItem>
											</asp:DropDownList>&nbsp;
											<asp:TextBox id="key" runat="server" CssClass="form80"></asp:TextBox>
											<asp:button CssClass="button" id="p_search" runat="server" Text="����"></asp:button></td>
									</tr>
								</table>							</TD>
						</TR>
						<TR>
							<TD bgColor="#cccccc" colSpan="11" height="1"></TD>
						</TR>
						<TR class="category_menu">
							<TD width="57%" height="22" align="center" noWrap background="../images/tableheadingback.gif">����</TD>
							<TD width="1%" align="center" valign="top" noWrap background="../images/tableheadingback.gif"><IMG src="../images/tableheadingsep.gif" width="6" height="17" align="top"></TD>
							<TD width="14%" noWrap background="../images/tableheadingback.gif">��Ŀ</TD>
							<TD width="1%" align="center" valign="top" noWrap background="../images/tableheadingback.gif"
								style="HEIGHT: 18px"><IMG src="../images/tableheadingsep.gif" width="6" height="17"></TD>
							<TD width="5%" noWrap background="../images/tableheadingback.gif">¼���û�</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="5%" background="../images/tableheadingback.gif">¼��ʱ��</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="5%" background="../images/tableheadingback.gif">����</TD>
							<TD vAlign="top" noWrap width="1%" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
							<TD noWrap width="9%" background="../images/tableheadingback.gif">�޸�|ɾ��</TD>
						</TR>
						<asp:repeater id="list_news" runat="server">
							<ItemTemplate>
								<TR class="category_menu" onMouseOver="this.style.backgroundColor='#E6F5FA'" onMouseOut="this.style.backgroundColor='#FFFFFF'">
									<TD align="left" noWrap style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all; WORD-WRAP: break-word"><%#(bool)DataBinder.Eval(Container.DataItem,"TitleNews")?"<img src='../images/newstype/title.gif' align='absmiddle' title='��������'>":""%><%#DataBinder.Eval(Container.DataItem,"PicPath").ToString()!=""?"<img src='../images/newstype/img.gif' align='absmiddle' title='ͼƬ����'>":""%><%#DataBinder.Eval(Container.DataItem,"Picdepict").ToString()!=""?"<img src='../images/newstype/depict.gif' align='absmiddle' title='ժҪ����'>":""%><%#(bool)DataBinder.Eval(Container.DataItem,"Recommend")?"<img src='../images/newstype/recommend.gif' align='absmiddle' title='�Ƽ�����'>":""%>
										<%#(bool)DataBinder.Eval(Container.DataItem,"TitleNews")?"<a href='"+DataBinder.Eval(Container.DataItem,"ObjUrl")+"' target=_blank>":"<a href='"+getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),true)+DataBinder.Eval(Container.DataItem,"DatePath")+"/"+DataBinder.Eval(Container.DataItem,"FileName")+"."+getCategory(DataBinder.Eval(Container.DataItem,"CategoryID").ToString(),false)+"' target=_blank>"%>
										<font color='<%#DataBinder.Eval(Container.DataItem,"TitleColor")%>'>
											<%#JFCmsEnterprise.inc.FilterString(DataBinder.Eval(Container.DataItem,"Title").ToString(),80,true,"...")%></font><font color="green">(���ۣ�<%#DataBinder.Eval(Container.DataItem,"ReviewCount")%>)</font>
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
											���۹���</a></TD>
									<TD noWrap width="1%"></TD>
									<TD noWrap width="9%"><a href='JF_EditNews.aspx?CategoryID=<%#DataBinder.Eval(Container.DataItem,"CategoryID")%>&NewsID=<%# DataBinder.Eval(Container.DataItem,"NewsID")%>&FromUrl=JF_TodayNews.aspx'>�޸�</a>|<a href='?action=DelNews&NewsID=<%# DataBinder.Eval(Container.DataItem,"NewsID")%>&DatePath=<%# DataBinder.Eval(Container.DataItem,"DatePath")%>&FileName=<%# DataBinder.Eval(Container.DataItem,"FileName")%>' onClick="return Del()">ɾ��</a>|
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
								<INPUT type="radio" value="move" ID="move" name="exe" title='ת������'><label for=move>ת��</label> 
								<INPUT type="radio" value="del" id="del" name="exe" title='ɾ������'><label for=del>ɾ��</label> 
								<INPUT type="radio" value="recrnews" id="recrnews" name="exe" title='������������ҳ��'><label for="recrnews">��д����</label> 
								<INPUT type="radio" value="recrreview" id="recrreview" name="exe" title='������������ҳ��'><label for="recrreview">��д����</label>
								<INPUT type="radio" value="unrecommend" id="unrecommend" name="exe" title='ȡ���Ƽ�����' checked><label for="unrecommend"><font color='red'>ȡ���Ƽ�</font></label>
								<INPUT type="radio" value="recommend" id="recommend" name="exe" title='�Ƽ�����' checked><label for="recommend"><font color='red'>�Ƽ�</font></label> 
								<INPUT type="radio" value="deaudit" id="deaudit" name="exe" title='ȡ��ͨ���������'><label for="deaudit">ȡ�����</label>
								<INPUT type="radio" value="audit" id="audit" name="exe" title='ͨ���������' checked><label for="audit">���</label>
								<asp:button CssClass="button" id="n_exe" runat="server" Text="ִ��"></asp:button>
								ȫѡ<input onClick="CheckAll(this.form)" type="checkbox" name="chkall">
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
