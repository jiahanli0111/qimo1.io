<%@ Page language="c#" Codebehind="JF_AdsManage.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Ads.JF_AdsManage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>������ </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
	</HEAD>
	<body onload="load();">
		<FONT face="����">
			<form id="Form1" method="post" runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TBODY>
						<TR>
							<TD class="tab-on" id="navcell" onclick="switchCell(1)" name="navcell"><IMG height="16" src="../images/navbar_intro.gif" width="16" align="absMiddle">
								����״̬</TD>
							<TD class="tab-off" id="navcell" onclick="switchCell(2)" name="navcell"><IMG height="16" src="../images/navbar_update.gif" width="16" align="absMiddle">
								��ʾ����</TD>
							<TD class="tab-off" id="navcell" onclick="switchCell(3)" name="navcell"><IMG height="16" src="../images/navbar_link.gif" width="16" align="absMiddle">
								��������</TD>
							<TD class="tab-off" id="navcell" onclick="switchCell(4)" name="navcell"><IMG height="16" src="../images/navbar_awards.gif" width="16" align="absMiddle">
								��������</TD>
							<TD class="tab-off" id="navcell" onclick="switchCell(5)" name="navcell"><IMG height="16" src="../images/navbar_awards.gif" width="16" align="absMiddle">
								�޸�/ɾ��</TD>
							<TD class="tab-off" id="navcell" onclick="switchCell(6)" name="navcell"><IMG height="16" src="../images/navbar_awards.gif" width="16" align="absMiddle">
								��ӹ��</TD>
							<TD class="tab-none" align="center" width="100">&nbsp;</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
					name="tb">
					<TBODY>
						<TR>
							<TD class="td_heading_head" vAlign="top" width="20%"><strong>�������</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="22%"><strong>�������ͼ</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="8%"><strong>��ǰ״̬</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="9%"><strong>��ʾ����</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="41%"><strong>״̬�趨</strong></TD>
						</TR>
						<asp:repeater id="list_ads" Runat="server">
							<ItemTemplate>
								<TR>
									<TD vAlign="top" class="td_heading_txt"><a href='javascript:' onclick='newwin("JF_AdsDepict.aspx?AdsCategoryID=<%#DataBinder.Eval(Container.DataItem,"AdsCategoryID")%>&AdsID=<%#DataBinder.Eval(Container.DataItem,"AdsID")%>",560,500)'><%#DataBinder.Eval(Container.DataItem,"AdsName")%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsType").ToString()=="flash"?"Flash��� Ԥ����ȡ������ ":"<a href='"+DataBinder.Eval(Container.DataItem,"MediaUrl")+"' target=_blank><img src='"+DataBinder.Eval(Container.DataItem,"MediaUrl")+"' width=130 height=30 border=0></a>"%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"AdsState")?"<font color=green>���ڲ���</font>":"<font color=red>��ʱ����</font>")%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"AdsState"))?DataBinder.Eval(Container.DataItem,"SProportion"):"N/A"%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#(bool)DataBinder.Eval(Container.DataItem,"AdsState")?"<a href='?action=stop&AdsID="+DataBinder.Eval(Container.DataItem,"AdsID")+"&AdsCategoryID="+AdsCategoryID+"' onclick=\"return Operation()\"><img src=../images/ads/on_show.gif border=0 align=absMiddle>��ͣ</a> <a href='javascript:' onclick=\"newwin('JF_AdsCovert.aspx?AdsID="+DataBinder.Eval(Container.DataItem,"AdsID")+"',350,300)\"><img src=../images/ads/on_schedule.gif border=0 align=absMiddle>�ƻ�</a> "+((DataBinder.Eval(Container.DataItem,"Arranged")).ToString()!=""?"��<font color=red>"+DataBinder.Eval(Container.DataItem,"Arranged")+"</font>ֹͣ����":"")+""+"":"<a href='?action=start&AdsID="+DataBinder.Eval(Container.DataItem,"AdsID")+"&AdsCategoryID="+AdsCategoryID+"'><img src=../images/ads/on_stop.gif border=0 align=absMiddle>��ʼ</a>"%></TD>
								</TR>
							</ItemTemplate>
						</asp:repeater></TBODY></TABLE>
				<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
					name="tb">
					<TBODY>
						<TR>
							<TD class="td_heading_head" vAlign="top" width="20%"><strong>�������</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="22%"><strong>�������ͼ</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="8%"><strong>��ǰ״̬</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="50%"><strong>��ʾ�����趨</strong></TD>
						</TR>
						<asp:repeater id="list_ads_set" Runat="server">
							<ItemTemplate>
								<TR>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsName")%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsType").ToString()=="flash"?"Flash��� Ԥ����ȡ������ ":"<a href='"+DataBinder.Eval(Container.DataItem,"MediaUrl")+"' target=_blank><img src='"+DataBinder.Eval(Container.DataItem,"MediaUrl")+"' width=130 height=30 border=0></a>"%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"AdsState")?"<font color=green>���ڲ���</font>":"<font color=red>��ʱ����</font>")%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"AdsState"))?"<u>��ǰ����</u> <input name=\"SProportion\" type=\"text\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"SProportion")+"\" size=\"4\"><input type=\"hidden\" name=\"SP_AdsID\" value=\""+DataBinder.Eval(Container.DataItem,"AdsID")+"\">":"N/A"%></TD>
								</TR>
							</ItemTemplate>
						</asp:repeater>
						<TR>
							<TD class="td_heading_txt" vAlign="top">&nbsp;</TD>
							<TD class="td_heading_txt" vAlign="top" align="right" colSpan="2">��ʾ���������趨��Χ��1-10
							</TD>
							<TD class="td_heading_txt" vAlign="top"><asp:button id="setok" runat="server" Text=" �� �� " CssClass="button" Width="56px" Height="24px"></asp:button></TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
					name="tb">
					<TBODY>
						<TR>
							<TD class="td_heading_head" vAlign="top" width="20%"><strong>�������</strong></TD>
							<TD class="td_heading_head" vAlign="top" colSpan="2"><strong>��������</strong></TD>
						</TR>
						<asp:repeater id="list_ads_condition" Runat="server">
							<ItemTemplate>
								<TR>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsName")%></TD>
									<TD colspan="2" vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"ShowState"))?"<input type=\"checkbox\" name=\"ShowState-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\" checked>��ʾ�������� <input name=\"ShowCount-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"ShowCount")+"\"> ��ֹͣ����":"<input type=\"checkbox\" name=\"ShowState-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\">��ʾ�������� <input name=\"ShowCount-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"ShowCount")+"\"> ��ֹͣ����"%><br>
										<font color="green">
											<%#((bool)DataBinder.Eval(Container.DataItem,"ClickState"))?"<input type=\"checkbox\" name=\"ClickState-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\" checked>����������� <input name=\"ClickCount-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"ClickCount")+"\"> ��ֹͣ����":"<input type=\"checkbox\" name=\"ClickState-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\">����������� <input name=\"ClickCount-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"ClickCount")+"\"> ��ֹͣ����"%>
										</font><input name="Condition_AdsID" type="hidden" value='<%#DataBinder.Eval(Container.DataItem,"AdsID")%>'></TD>
								</TR>
							</ItemTemplate>
						</asp:repeater>
						<TR>
							<TD class="td_heading_txt" vAlign="top">&nbsp;</TD>
							<TD class="td_heading_txt" vAlign="top" align="right" width="30%">�����������д����
							</TD>
							<TD class="td_heading_txt" vAlign="top" width="50%"><asp:button id="Condition_OK" runat="server" Text=" �� �� " CssClass="button" Width="56px" Height="24px"></asp:button></TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
					name="tb">
					<TBODY>
						<TR>
							<TD class="td_heading_head" vAlign="top" width="20%"><strong>�������</strong></TD>
							<TD class="td_heading_head" vAlign="top" colSpan="2"><strong>��������</strong></TD>
						</TR>
						<asp:repeater id="list_ads_count" Runat="server">
							<ItemTemplate>
								<TR>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsName")%></TD>
									<TD colspan="2" vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"ShowFiltrationIP"))?"<input type=\"checkbox\" name=\"ShowFiltrationIP-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\" checked>��ʾ���� <input name=\"ShowTime-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"ShowTime")+"\"> �������ظ�IP������":"<input type=\"checkbox\" name=\"ShowFiltrationIP-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\">��ʾ���� <input name=\"ShowTime-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\"\"> �������ظ�IP������"%><br>
										<font color="green">
											<%#((bool)DataBinder.Eval(Container.DataItem,"ClickFiltrationIP"))?"<input type=\"checkbox\" name=\"ClickFiltrationIP-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\" checked>������� <input name=\"ClickTime-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\""+DataBinder.Eval(Container.DataItem,"ClickTime")+"\"> �������ظ�IP������":"<input type=\"checkbox\" name=\"ClickFiltrationIP-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" value=\"true\">������� <input name=\"ClickTime-"+DataBinder.Eval(Container.DataItem,"AdsID")+"\" type=\"text\" size=\"8\" class=form80 value=\"\"> �������ظ�IP������"%>
										</font><input name="Count_AdsID" type="hidden" value='<%#DataBinder.Eval(Container.DataItem,"AdsID")%>'></TD>
								</TR>
							</ItemTemplate>
						</asp:repeater>
						<TR>
							<TD class="td_heading_txt" vAlign="top">&nbsp;</TD>
							<TD class="td_heading_txt" vAlign="top" align="right" width="30%">�����������д����
							</TD>
							<TD class="td_heading_txt" vAlign="top" width="50%"><asp:button id="Count_OK" runat="server" Text=" �� �� " CssClass="button" Width="56px" Height="24px"></asp:button></TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
					name="tb">
					<TBODY>
						<TR>
							<TD class="td_heading_head" vAlign="top" width="20%"><strong>�������</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="22%"><strong>�������ͼ</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="8%"><strong>��ǰ״̬</strong></TD>
							<TD class="td_heading_head" vAlign="top" width="50%"><strong>����</strong></TD>
						</TR>
						<asp:repeater id="list_ads_operation" Runat="server">
							<ItemTemplate>
								<TR>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsName")%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#DataBinder.Eval(Container.DataItem,"AdsType").ToString()=="flash"?"Flash��� Ԥ����ȡ������ ":"<a href='"+DataBinder.Eval(Container.DataItem,"MediaUrl")+"' target=_blank><img src='"+DataBinder.Eval(Container.DataItem,"MediaUrl")+"' width=130 height=30 border=0></a>"%></TD>
									<TD vAlign="top" class="td_heading_txt"><%#((bool)DataBinder.Eval(Container.DataItem,"AdsState")?"<font color=green>���ڲ���</font>":"<font color=red>��ʱ����</font>")%></TD>
									<TD vAlign="top" class="td_heading_txt">
										<input type="checkbox" value='<%#DataBinder.Eval(Container.DataItem,"AdsID")%>' name="Operation_AdsID">
										<a href="javascript:" onclick='newwin("JF_EditAds.aspx?AdsID=<%#DataBinder.Eval(Container.DataItem,"AdsID")%>","ads",400,400)'>�޸�</a></TD>
								</TR>
							</ItemTemplate>
						</asp:repeater>
						<TR>
							<TD class="td_heading_txt" vAlign="top">&nbsp;</TD>
							<TD class="td_heading_txt" vAlign="top" align="right" colSpan="2"></TD>
							<TD class="td_heading_txt" vAlign="top"><input onclick="CheckAll(this.form)" type="checkbox" name="chkall">ȫѡ
								<asp:button id="Operation_OK" runat="server" Text=" ɾ �� " CssClass="button" Width="56px" Height="24px"></asp:button></TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE class="tab-content" id="tb" cellSpacing="5" cellPadding="0" width="100%" border="0"
					name="tb">
					<TBODY>
						<TR>
							<TD class="td_heading_head" vAlign="top" colSpan="2">�����¹��</TD>
						</TR>
						<TR>
							<TD vAlign="top" width="16%">�������</TD>
							<TD width="84%" vAlign="top">&nbsp;
								<asp:TextBox id="AdsName" runat="server" CssClass="form80" MaxLength="50"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD vAlign="top">�������</TD>
							<TD width="84%" vAlign="top">
								<asp:RadioButtonList id="AdsType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem Value="pic" Selected="True">ͼƬ</asp:ListItem>
									<asp:ListItem Value="flash">Flash</asp:ListItem>
								</asp:RadioButtonList></TD>
						</TR>
						<TR>
							<TD vAlign="top">ͼƬ(Flash)�ߡ���</TD>
							<TD width="84%" vAlign="top">&nbsp;<FONT face="����">�ߣ�</FONT>
								<asp:TextBox id="Height" runat="server" CssClass="form80" Width="32px"></asp:TextBox><FONT face="����">&nbsp;��
									<asp:TextBox id="Width" runat="server" CssClass="form80" Width="32px"></asp:TextBox></FONT></TD>
						</TR>
						<TR>
							<TD vAlign="top">ͼƬ(Flash)·��</TD>
							<TD width="84%" vAlign="top">&nbsp;
								<asp:TextBox id="MediaUrl" runat="server" CssClass="form80">http://</asp:TextBox></TD>
						</TR>
						<TR>
							<TD vAlign="top">Ŀ��������</TD>
							<TD vAlign="top">&nbsp;
								<asp:TextBox id="ObjUrl" runat="server" CssClass="form80">http://</asp:TextBox></TD>
						</TR>
						<TR>
							<TD vAlign="top">��ע</TD>
							<TD vAlign="top">&nbsp;
								<asp:TextBox id="Remark" runat="server" CssClass="form80" Width="184px" Height="84px" TextMode="MultiLine"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD colSpan="2" height="1" background="../images/bg_line.gif"></TD>
						</TR>
						<TR>
							<TD vAlign="top">&nbsp;
							</TD>
							<TD vAlign="top"><asp:Button ID="Ads_add" runat="server" Height="24px" Width="56px" CssClass="button" Text=" �� �� "></asp:Button><FONT face="����">&nbsp;</FONT><INPUT class="button" style="WIDTH: 56px; HEIGHT: 24px" type="reset" value=" �� д "></TD>
						</TR>
					</TBODY>
				</TABLE>
			</form>
		</FONT>
	</body>
</HTML>
