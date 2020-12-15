<%@ Register TagPrefix="uc1" TagName="top" Src="../include/top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="foot" Src="../include/foot.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top_Menu" Src="Top_Menu.ascx" %>
<%@ Page CodeBehind="JF_FileManage.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="JFCmsEnterprise.manageNews.Setup.JF_FileManage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>文件管理 </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../images/include-leftmenu.css" type="text/css" rel="stylesheet">
		<LINK href="../images/standard.css" type="text/css" rel="stylesheet">
		<SCRIPT src="../images/standard.js"></SCRIPT>
		<SCRIPT src="../include/js/JFCms.js" charset="gb2312"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FORM id="Form1" runat="server">
			<uc1:top id="Top1" runat="server"></uc1:top><uc1:top_menu id="Top_Menu1" runat="server"></uc1:top_menu>
			<table height="56" width="732" align="center" border="0">
				<tr>
					<td width="63">
						<div align="center"><a href="JF_FileManage.aspx?fid=<%=pid%>" title="向上一级"><img src="../images/file/up.gif" border="0"></a></div>
					</td>
					<td width="57">
						<div align="center"><a href="JF_FileManage.aspx" title="根目录"><img src="../images/file/home.gif" border="0"></a></div>
					</td>
					<td width="53">
						<div align="center"><asp:imagebutton id="RefreshBtn" runat="server" ImageUrl="../images/file/fs_refresh.gif" ToolTip="刷新本页"></asp:imagebutton></div>
					</td>
					<td width="59">
						<div align="center"><a href='JF_EditFolder.aspx?Path=<%=path%>&amp;ParentID=<%=fid%>'><IMG alt="新文件夹" src="../images/file/new_folder.gif" border="0"></a></div>
					</td>
					<td width="52">
						<div align="center"><asp:imagebutton id="del" runat="server" ImageUrl="../images/file/delete_big.gif" ToolTip="删除"></asp:imagebutton></div>
					</td>
					<td width="57">
						<div align="center"><asp:imagebutton id="cut" runat="server" ImageUrl="../images/file/cut.gif" ToolTip="剪切 只能剪切文件"></asp:imagebutton></div>
					</td>
					<td width="53">
						<div align="center"><asp:imagebutton id="copy" runat="server" ImageUrl="../images/file/copy.gif" ToolTip="复制 只能复制文件"></asp:imagebutton></div>
					</td>
					<td width="60">
						<div align="center"><asp:imagebutton id="pas" runat="server" ImageUrl="../images/file/pas.gif" ToolTip="粘贴"></asp:imagebutton></div>
					</td><!--
					<td width="57">
						<div align="center"><a href='<%= "javascript:Search(\"\")" %>'><IMG alt="搜索" src="../images/file/ab_search.gif" border="0"></a></div>
					</td>-->
					<td align="center" width="57"><a href='javascript:' onclick='newwin("JF_UpLoadFile.aspx?Fid=<%=fid%>","u","400","420")'><IMG alt="上传文件" src="../images/file/upload.gif" border="0"></a></td>
					<td width="118">
						<div align="center">当前目录</div>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">向上一级</div>
					</td>
					<td>
						<div align="center">根目录</div>
					</td>
					<td>
						<div align="center">刷新本页</div>
					</td>
					<td>
						<div align="center">新文件夹</div>
					</td>
					<td>
						<div align="center">删除</div>
					</td>
					<td>
						<div align="center">剪切</div>
					</td>
					<td>
						<div align="center">复制</div>
					</td>
					<td>
						<div align="center">粘贴</div>
					</td><!--
					<td>
						<div align="center">搜索</div>
					</td>-->
					<td align="center">上传文件</td>
					<td>
						<div align="center">
							<asp:TextBox id="CurrentPath" runat="server" CssClass="form80"></asp:TextBox></div>
					</td>
				</tr>
			</table>
			
  <TABLE id="Table6" cellSpacing="0" cellPadding="0" width="80%" align="center" border="0">
    <TR> 
      <TD colSpan="12" height="8"></TD>
    </TR>
    <TR bgColor="#808080"> 
      <TD bgColor="#cccccc" colSpan="14" height="1"></TD>
    </TR>
    <TR class="category_menu"> 
      <TD noWrap width="29" background="../images/tableheadingback.gif">&nbsp;ID</TD>
      <TD vAlign="top" noWrap width="7" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
      <TD colspan="2" noWrap background="../images/tableheadingback.gif">名称</TD>
      <TD vAlign="top" noWrap width="7" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
      <TD noWrap width="118" background="../images/tableheadingback.gif">大小</TD>
      <TD vAlign="top" noWrap width="7" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
      <TD noWrap width="147" background="../images/tableheadingback.gif">最后更新</TD>
      <TD width="6" valign="top" noWrap background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
      <TD noWrap width="67" background="../images/tableheadingback.gif">功能</TD>
      <TD vAlign="top" noWrap width="7" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
      <TD noWrap width="38" background="../images/tableheadingback.gif">删除</TD>
      <TD vAlign="top" noWrap width="7" background="../images/tableheadingback.gif"><IMG height="17" src="../images/tableheadingsep.gif" width="6"></TD>
      <TD noWrap width="52" background="../images/tableheadingback.gif">改名</TD>
    </TR>
    <asp:Repeater ID="list_info" Runat="server"> 
      <ItemTemplate> 
        <TR class="category_menu"> 
          <TD noWrap width="29" align="center"><input type="checkbox" name="DelFolderID" value='<%# DataBinder.Eval(Container.DataItem,"Fid")%>'></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="44"><img src="../images/File/icons/folder.gif" width="17" height="15"></TD>
          <TD noWrap width="271"><a href='?Fid=<%# DataBinder.Eval(Container.DataItem,"Fid")%>'> 
            <%# DataBinder.Eval(Container.DataItem,"FolderTitle")%>
            </a></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="118">-</TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap>-</TD>
          <TD noWrap>&nbsp;</TD>
          <TD noWrap>-</TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="38"><a href="?action=del&Fid=<%=fid%>&FolderID=<%# DataBinder.Eval(Container.DataItem,"Fid")%>" onclick="return Del()">删除</a></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="52"><a href='JF_EditFolder.aspx?Fid=<%# DataBinder.Eval(Container.DataItem,"Fid")%>'>改名</a></TD>
        </TR>
      </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="list_files" Runat="server"> 
      <ItemTemplate> 
        <TR class="category_menu"> 
          <TD noWrap width="29" align="center"><input type="checkbox" name="DelFileName" value='<%# DataBinder.Eval(Container.DataItem,"FileName")%>'></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="44"><img src='<%#GetIcon(DataBinder.Eval(Container.DataItem,"FileExt").ToString())%>'></TD>
          <TD noWrap width="271"><a href="<%=weburl%><%# DataBinder.Eval(Container.DataItem,"FileName")%>" target=_blank> 
            <%# DataBinder.Eval(Container.DataItem,"FileName")%>
            </a></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="118">
            <%# DataBinder.Eval(Container.DataItem,"FileSize")%>
            K</TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD width="147" noWrap>
            <%# DataBinder.Eval(Container.DataItem,"ModifyLastDate")%>
          </TD>
          <TD width="6" noWrap>&nbsp;</TD>
          <TD width="67" noWrap><a href="<%=weburl%><%# DataBinder.Eval(Container.DataItem,"FileName")%>" target="_blank">查看</a>|<a href="javascript:copyUrl('<%=weburl%><%# DataBinder.Eval(Container.DataItem,"FileName")%>','<%# DataBinder.Eval(Container.DataItem,"FileName")%>')">复制</a></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="38"><a href="?action=del&Fid=<%=fid%>&FileName=<%# DataBinder.Eval(Container.DataItem,"FileName")%>" onclick="return Del()">删除</a></TD>
          <TD vAlign="top" noWrap width="7"></TD>
          <TD noWrap width="52"><a href="javascript:rename('<%# DataBinder.Eval(Container.DataItem,"FileName")%>',<%=fid%>);" title='<%# DataBinder.Eval(Container.DataItem,"FileName")%>'>改名</a></TD>
        </TR>
      </ItemTemplate>
    </asp:Repeater>
  </TABLE>
			</FORM>
		</FORM>
	</body>
</HTML>
