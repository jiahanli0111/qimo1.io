<%@ Page language="c#" Codebehind="vote.aspx.cs" AutoEventWireup="false" Inherits="JFCmsEnterprise.vote" %>
<!-- Hide 
var newWindow = null
function windowOpener(loadpos)
{       
        if (! newWindow || newWindow.closed)
        {
        newWindow = window.open(loadpos,"JF_Vote","scrollbars,top=0,width=400,height=200");
        }else
        {
                newWindow.focus();
        }
}
//end-->
javastr="";
<%=js%>
javastr=javastr+"<input type='submit' value='提交'>&nbsp;&nbsp;"
javastr=javastr+"<input type='button' value='查看' onClick=windowOpener('http://<%=Request.Url.Host+Request.ApplicationPath%>/showvote.aspx?action=show&VoteClassID=<%=VoteClassID%>')>"
javastr=javastr+"</form>"
document.write(javastr)