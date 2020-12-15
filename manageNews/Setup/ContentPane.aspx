<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>网站管理系统 </title>
		<%if ((Session["username"]==null) || (Session["username"].ToString()=="")) Response.Write("<script>window.parent.location='index.aspx';</script>");%>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript">
		
			function confirmDeleteFile(filePath, fileName){				
				if(confirm("确认删除 '" + fileName + "' 文件吗？"))
   	 				document.location.href = filePath;   	 			   	 			
			}
			
			function confirmDeleteFolder(filePath, folderName){				
				if(confirm("确认删除 '" + folderName + "' 及其下的所有子目录吗？")){
   	 				document.location.href = filePath;
   	 			}   	 		
			}
			
			function newFolder(path)
			{
				var folderName = window.prompt("请输入新文件夹名称", "");			
				if(folderName != null)
					document.location.href = "contentPane.aspx?newFolder=" + folderName + "&Path=" + path;
			}
			
			function Search(path)
			{
				var SearchName = window.prompt("请输入欲搜索的文件名，可带通配符，如“*.txt”,“*.doc”      务必输入后缀名，结果将在当前目录下搜索", "*.*");			
				if(SearchName != null)
					document.location.href = "contentPane.aspx?toFind=" + SearchName + "&Path=" + path;
			}
			
			function rename(filePath, fileName)
			{
				var newName = window.prompt("输入新文件名： '" + fileName + "'", fileName);			
				if(newName != null)
					document.location.href = filePath + "&NewName=" + newName;
			}
			
			function popUp(pPage) 
			{
				window.open(pPage,'newwindow','resizeable=no,scrollbars=yes,left=125,top=175,width=520,height=360');
			} 
			
		</script>
		<style type="text/css">.tdtoptitle { COLOR: #000000 }
	BODY { FONT-SIZE: 12px }
	TD { FONT-SIZE: 12px }
	TH { FONT-SIZE: 12px }
	BODY { MARGIN-TOP: 0px }
	</style>
	</HEAD>
	<body bgColor="#e7e7ef">
		<form id="Form1" runat="server">
			<TABLE height="29" cellSpacing="0" cellPadding="1" width="742" border="0">
				<tr>
					<td width="46%">
						<table border="0">
							<tr>
								<td bgColor="#e7e7ef"><asp:label id="lblsize" runat="server" Text="网络硬盘空间共使用：">网络硬盘空间共使用：</asp:label></td>
								<td vAlign="middle">
									<table style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid"
										height="8" cellSpacing="0" cellPadding="1" width="100" bgColor="#ffffff" border="0">
										<tr>
											<td vAlign="middle"><IMG id="IMG1" height="8" src="pics\progress.GIF" width="100" runat="server"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<td width="13%">当前目录：&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width="32%"><asp:textbox id="currentPathTxt" runat="server" Width="200px" CssClass="headerInputBox" OnTextChanged="pathBoxChange"
							BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana, Arial, 宋体"></asp:textbox></td>
					<td width="9%"><asp:imagebutton id="GoButton" runat="server" ImageUrl="pics/icons/go.gif"></asp:imagebutton></td>
				</tr>
			</TABLE>
			<hr>
			<table height="56" width="671" border="0">
				<tr>
					<td width="63">
						<div align="center"><asp:imagebutton id="UpBtn" runat="server" ImageUrl="pics/up.gif" ToolTip="向上一级"></asp:imagebutton></div>
					</td>
					<td width="57">
						<div align="center"><asp:imagebutton id="GoRoot" runat="server" ImageUrl="pics/home.gif" ToolTip="根目录"></asp:imagebutton></div>
					</td>
					<td width="53">
						<div align="center"><asp:imagebutton id="RefreshBtn" runat="server" ImageUrl="pics/fs_refresh.gif" ToolTip="刷新本页"></asp:imagebutton></div>
					</td>
					<td width="59">
						<div align="center"><a 
      href='<%= "javascript:newFolder(\"" + this.path1 + "\")" %>' 
      ><IMG alt="新文件夹" src="pics/new_folder.gif" border="0"></a></div>
					</td>
					<td width="52">
						<div align="center"><asp:imagebutton id="del" runat="server" ImageUrl="pics/delete_big.gif" ToolTip="删除"></asp:imagebutton></div>
					</td>
					<td width="57">
						<div align="center"><asp:imagebutton id="cut" runat="server" ImageUrl="pics/cut.gif" ToolTip="剪切"></asp:imagebutton></div>
					</td>
					<td width="53">
						<div align="center"><asp:imagebutton id="copy" runat="server" ImageUrl="pics/copy.gif" ToolTip="复制"></asp:imagebutton></div>
					</td>
					<td width="60">
						<div align="center"><asp:imagebutton id="pas" runat="server" ImageUrl="pics/pas.gif" ToolTip="粘贴"></asp:imagebutton></div>
					</td>
					<td width="57">
						<div align="center"><a 
      href='<%= "javascript:Search(\"" + this.path1 + "\")" %>' 
      ><IMG alt="搜索" src="pics/ab_search.gif" border="0"></a></div>
					</td>
					<td width="57">
						<div align="center"><a 
      href='<%= "javascript:popUp(\"upload.aspx?Path=" + this.path1 +"/"+ "\")"%>' 
      ><IMG alt="上传文件" src="pics/upload.gif" border="0"></a></div>
					</td>
					<td width="57">
						<div align="center"><asp:imagebutton id="share" runat="server" ImageUrl="pics/sharing.gif" ToolTip="共享"></asp:imagebutton></div>
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
					</td>
					<td>
						<div align="center">搜索</div>
					</td>
					<td>
						<div align="center">上传文件</div>
					</td>
					<td>
						<div align="center"><asp:label id="lblshare" runat="server" Text="共享"></asp:label></div>
					</td>
				</tr>
			</table>
			<TABLE cellSpacing="0" cellPadding="3" border="0">
				<TR bgColor="#b1cbe4">
					<TH align="left" width="16">
						<asp:checkbox id="CheckBox2" onclick="checkAll()" runat="server"></asp:checkbox></TH>
					<TH align="left" width="16">
					</TH>
					<TH align="left" width="381">
						<DIV align="center"><SPAN class="tdtoptitle">名称</SPAN></DIV>
					</TH>
					<TH align="left" width="79">
						<DIV align="center"><STRONG>大小</STRONG></DIV>
					</TH>
					<TH align="center" width="143">
						最后更新
					</TH>
					<TH align="center" width="32">
						删除
					</TH>
					<TH align="center" width="35">
						改名</TH></TR>
				<asp:panel id="filesFoldersPanel" Runat="server">
					<asp:placeholder id="FilesFolders" runat="server"></asp:placeholder></TABLE>
			<TABLE width="97%" border="0">
				<TR>
					<TD>&nbsp;
						<asp:label id="info" runat="server" Width="432" Height="18"></asp:label></TD>
				</TR>
			</TABLE>
			</asp:panel><INPUT id="HdnSelectedValues" type="hidden" name="HdnSelectedValues" runat="server">
		</form>
		<script language="JAVASCRIPT">
function AddRemoveValues(oChk) { 
if(oChk.checked)
Form1.HdnSelectedValues.value += "," + oChk.value; 
else
Form1.HdnSelectedValues.value = Form1.HdnSelectedValues.value.replace("," + oChk.value,""); 
}

function checkAll()
{
	var objID;
	objID=document.forms[0].elements;
	for (var i=2 ;i<objID.length-1;i++)
	{
		if(objID[i].checked)
		{
			objID[i].checked=false;
			document.all.CheckBox2.checked=false;
			AddRemoveValues(objID[i]); 
			
		}
		else
		{
			objID[i].checked=true;
			document.all.CheckBox2.checked=true;
			AddRemoveValues(objID[i]);
		}
	}
}
		</script>
	</body>
</HTML>
