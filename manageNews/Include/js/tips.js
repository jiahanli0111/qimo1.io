var ns4 = document.layers;
var ns6 = document.getElementById && !document.all;
var ie4 = document.all;
offsetX = -10;
offsetY = 20;
var toolTipSTYLE="";
function initToolTips() {
if(ns4||ns6||ie4) {
if(ns4) toolTipSTYLE = document.toolTipLayer;
else if(ns6) toolTipSTYLE = document.getElementById("toolTipLayer").style;
else if(ie4) toolTipSTYLE = document.all.toolTipLayer.style;
if(ns4) document.captureEvents(Event.MOUSEMOVE);
else {
toolTipSTYLE.visibility = "visible";
toolTipSTYLE.display = "none";
}
document.onmousemove = moveToMouseLoc;
}
}
function toolTip(msg, fg, bg) {
if(toolTip.arguments.length < 1) {// hide 
if(ns4) toolTipSTYLE.visibility = "hidden";
else toolTipSTYLE.display = "none";
}
else {// show
if(!fg) fg = "#B58C00";
if(!bg) bg = "#FFFBB8";
var content =
'<table border="0" cellspacing="0" cellpadding="1" bgcolor="' + fg + '"><td>' +
'<table border="0" cellspacing="0" cellpadding="1" bgcolor="' + bg + 
'"><td align="center" CLASS=tip><font face="sans-serif" color="' + fg +
'">&nbsp\;' + msg +
'&nbsp\;</font></td></table></td></table>';
if(ns4) {
toolTipSTYLE.document.write(content);
toolTipSTYLE.document.close();
toolTipSTYLE.visibility = "visible";
}
if(ns6) {
document.getElementById("toolTipLayer").innerHTML = content;
toolTipSTYLE.display='block'
}
if(ie4) {
document.all("toolTipLayer").innerHTML=content;
toolTipSTYLE.display='block'
}
}
}
function moveToMouseLoc(e) {
if(ns4||ns6) {
x = e.pageX;
y = e.pageY;
}
else {
x = event.x + document.body.scrollLeft;
y = event.y + document.body.scrollTop;
}
toolTipSTYLE.left = x + offsetX;
toolTipSTYLE.top = y + offsetY;
return true;
}

document.writeln("<div id='toolTipLayer' style='position:absolute; visibility: hidden'></div>");
initToolTips();