var months = new Array("一月", "二月", "三月","四月", "五月", "六月", "七月", "八月", "九月","十月", "十一月", "十二月");

var daysInMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31,30, 31, 30, 31);


var days = new Array("日","一", "二", "三","四", "五", "六");

function getDays(month, year) {
    if (1 == month) {
        return ((0 == year % 4) && (0 != (year % 100))) || (0 == year % 400) ? 29 : 28;
    }
    else {
        return daysInMonth[month];
    }
}

function getToday() {
    this.now = new Date();
    this.year = this.now.getFullYear();
    this.month = this.now.getMonth();
    this.day = this.now.getDate();
}

today = new getToday();
function newCalendar() {
    today = new getToday();
    var parseYear = parseInt(document.all.year[document.all.year.selectedIndex].text);
    var newCal = new Date(parseYear,document.all.month.selectedIndex, 1);
    var day = -1;
    var startDay = newCal.getDay();
    var daily = 0;
    if ((today.year == newCal.getFullYear()) && (today.month == newCal.getMonth())) day = today.day;
    var tableCal = document.all.calendar.tBodies.dayList;
    var intDaysInMonth =getDays(newCal.getMonth(), newCal.getFullYear());
    for (var intWeek = 0; intWeek < tableCal.rows.length;intWeek++) {
        for (var intDay = 0;intDay < tableCal.rows[intWeek].cells.length;intDay++) {
            var cell = tableCal.rows[intWeek].cells[intDay];
            if ((intDay == startDay) && (0 == daily))
            daily = 1;
            if(day==daily) {
                //今天，调用今天的Class
                cell.className = "today";
            }
            else if(intDay==6) {
                //周六
                cell.className = "sunday";
            }
            else if (intDay==0) {
                //周日
                cell.className ="satday";
            }
            else {
                //平常
                cell.className="normal";
            }
            if ((daily > 0) && (daily <= intDaysInMonth))
            { 
            cell.innerText = daily;
            daily++;
            }
            else
            cell.innerText = "";
        }
    }
}

var init = false;
var tar = null;

function getDate() {
    var sDate;
    //这段代码处理鼠标点击的情况
    if ("TD" == event.srcElement.tagName) {
        if ("" != event.srcElement.innerText)
        {

            with(document.formCalendar) {
                sDate = year.value + "-" + month.value + "-" + event.srcElement.innerText;
                if(needtime.checked) {
                    sDate += " " + hour.value + ":" + minute.value + ":" + second.value;
                }
            }
            if(tar != null) tar.value = sDate;
            hiddenCalendar(CalendarLayer);
            //alert(sDate);
        }
    }
}

function showCalendar(obj,tarobj) {
    if(!init) {
        newCalendar();
        init = true;
    }
	var x,y;
	x = document.body.scrollLeft + event.clientX - 90; //获取当前鼠标位置的X坐标
	y = document.body.scrollTop + event.clientY + 20; //获取当前鼠标位置的Y坐标
    obj.style.left = x;
    obj.style.top = y;
//	alert(document.body.scrollLeft + "\n" + document.body.scrollTop);

//    obj.style.left = ((document.layers) ? event.pageX : event.clientX) - 90;
//    obj.style.top = ((document.layers) ? event.pageY : event.clientY) + event.srcElement.offsetHeight;

    var isOpen = tar != tarobj;
    tar = tarobj;
    obj.style.visibility = isOpen || obj.style.visibility == "hidden" ? "visible" : "hidden";
}

function hiddenCalendar(obj) {
    obj.style.visibility = "hidden";
}

function  shText() {
    var str = "";
    str += "<style type='text/css'>";
    str += ".normal{}";
    str += ".today {font-weight:bold;BACKGROUND: #6699cc}";
    str += ".satday{color:green}";
    str += ".sunday{color:red}";
    str += ".days {font-weight:bold}";
    str += "</style>";
    str += "<div id='CalendarLayer' style='position:absolute; left:289px; top:100px;z-index:1;visibility: hidden;background: #CCCCCC;'>";
    str += "<table id='calendar' cellspacing='0' cellpadding='0' width='200'>";
    str += "<form name='formCalendar'>";
    str += "<tr> ";
    str += "<td colspan=7 align=CENTER> ";
    str += "<select id='month' onChange='newCalendar()'>";
    for (var intLoop = 0; intLoop < months.length; intLoop++) {
        str += "<OPTION VALUE= " + (intLoop + 1) + " " + (today.month == intLoop ? "Selected" : "") + ">" + months[intLoop];
    }
    str += "</select>";
    str += "<select id='year' onChange='newCalendar()'>";
    for (var intLoop = today.year - 50; intLoop < (today.year + 50); intLoop++) {
        str += "<OPTION VALUE= " + intLoop + " " + (today.year == intLoop ? "Selected" : "") + ">" + intLoop;
    }
    str += "</select>";
    str += "</td>";
    str += "</tr>";
    str += "<tr class='days' align=center> ";
    str += "<TD class=satday>" + days[0] + "</TD>";
    for (var intLoop = 1; intLoop < days.length-1; intLoop++) {
        str += "<TD>" + days[intLoop] + "</TD>";
	}
    str += "<TD class=sunday>" + days[intLoop] + "</TD>";
    str += "</tr>";
    str += "<tbody border=1 cellspacing='0' cellpadding='0' id='dayList'align=CENTER onClick='getDate()'> ";
    for (var intWeeks = 0; intWeeks < 6; intWeeks++) {
        str += "<TR style='cursor:hand'>";
        for (var intDays = 0; intDays < days.length; intDays++) {
            str += "<TD></TD>";
        }
        str +="</TR>";
    }
    str += "</tbody> ";
    str += "<tr><td colspan=7>";
    str += "<input type=checkbox name=needtime value='yes' onclick='this.form.hour.disabled=(!this.checked);this.form.minute.disabled=(!this.checked);this.form.second.disabled=(!this.checked)'>需要";

    str += "<select name='hour' disabled>";
    for (var i = 0; i < 24; i++) {
        str += "<option value=" + i + ">" + i + "</option>";
    }
    str += "</select>时";

    str += "<select name='minute' disabled>";
    for (var i = 0; i < 60; i++) {
        str += "<option value=" + i + ">" + i + "</option>";
    }
    str += "</select>分";

    str += "<select name='second' disabled>";
    for (var i = 0; i < 60; i++) {
        str += "<option value=" + i + ">" + i + "</option>";
    }
    str += "</select>秒";

    str += "</td></tr>";
    str += "</form>";
    str += "</table>";
    str += "</div>";
    document.write(str);
}

shText();

function setTrBgcolor(obj,types) {
	if(types == 1) {
		obj.style.background = "#999999"; 
	} 
	else { 
		obj.style.background = ""; 
	} 
} 


function tunePage(toPageNo,pageNo) { 
	try { 
		 var topage = 1; 
		 if(typeof(toPageNo) != "number" || toPageNo < 1) topage = 1; 
		 else topage = toPageNo; 
		 var olds = window.location.search; 
		 if(typeof(pageNo) == "undefined" || pageNo == "") pageNo = "pageNo"; 
		 var news = ""; 
		 if(olds.length > 1) { 
			 olds = olds.substring(1,olds.length); 
			 var arrays = olds.split("&"); 
			 for (var i = 0; i < arrays.length ; i++) { 
				 if(arrays[i].indexOf(pageNo + "=") < 0 && arrays[i].length > 1) { 
					 news += "&" + arrays[i]; 
				 } 
			 } 
			 if(news.length > 1) { 
				 news = "?" + news.substring(1,news.length) + "&" + pageNo + "=" + topage; 
			 } 
			 else { 
				 news = "?" + pageNo + "=" + topage; 
			 } 
		 } 
		 else { 
			 news = "?" + pageNo + "=" + topage; 
		 } 
		 window.location = window.location.pathname + news; 
	 } 
	 catch(e) { 
		 window.location = window.location.pathname + window.location.search; 
	} 
} 

function sAll(thisObj,dObj) { 
	try { 
		var l = eval(dObj + ".length"); 
		if(typeof(l) == "undefined") { 
			eval(dObj).checked = thisObj.checked; 
		} 
		else { 
			for(var i = 0; i < l; i++) { 
				if(!eval(dObj + "[" + i + "]").disabled) eval(dObj + "[" + i + "]").checked = thisObj.checked; 
			} 
		} 
	} catch(e){} 
}


function moveSonUp(obj){
	var oldPosition=obj.selectedIndex;
	moveSonToNo(obj,oldPosition-1);
}


function moveSonToNo(obj,n){
	if (isNaN(n))
	{
		alert("请输入数字");
		return false;
	}
	var oldPosition=obj.selectedIndex;
	if(oldPosition<0) {
		alert("请选定一个列表项!");
		return;
	}
	var oldOption = obj.options[obj.selectedIndex];
	obj.remove(oldPosition);
	if (n>obj.length-1)
	{
		obj.add(oldOption,obj.length);
	}
	else if(n<0){
		obj.add(oldOption,0);
	}
	else obj.add(oldOption,n);
}

function moveSonTop(obj){
	moveSonToNo(obj,0);
}

function moveSonTail(obj){
	moveSonToNo(obj,obj.length);
}


function moveSonDown(obj){
	var oldPosition=obj.selectedIndex;
	moveSonToNo(obj,oldPosition+1);
}

function getAll_List(objlist,objstr,flag){   
    len=objlist.length;
    objstr.value="";
    if(len>0){
    for(i=0;i<len;i++){
	   if (flag==1)  objstr.value=objstr.value+","+objlist[i].value;
		  else objstr.value=objstr.value+","+objlist[i].text+"|"+objlist[i].value;
       }
    }
	if (objstr.value!="") objstr.value=objstr.value.substring(1);
}

function addListfromother(objlistfrom,objlistto){
    var l;
	var isExist = false;
    for (l=objlistfrom.length-1;l>=0;l--){ 
         if (objlistfrom.options[l].selected){
			isExist = false;
			for(i=0;i<objlistto.length;i++){
				if(objlistfrom[l].value==objlistto[i].value){
					isExist = true;
					break;
				}
			}
			if (isExist==false){
                var oOption = document.createElement("OPTION");
                oOption.text= objlistfrom[l].text;
                oOption.value= objlistfrom[l].value;
				objlistto.add(oOption); 
			}
     	 } 	
    }	
}

function addOneToListfromother(objlistfrom,objlistto){
    var l;
	var isExist = false;
    for (l=objlistfrom.length-1;l>=0;l--){ 
         if (objlistfrom.options[l].selected){
			isExist = false;
			if(objlistto.length>0){					
				//objlistto.options[0].value=objlistfrom[l].value;	
				objlistto.remove(0);
			}
               	var oOption = document.createElement("OPTION");
                oOption.text= objlistfrom[l].text;
                oOption.value= objlistfrom[l].value;
				oOption.selected = true;
				objlistto.add(oOption); 		
			break;
     	 } 	
    }	
}

function addList(objlist,vtext,vvalue){
	var isExist = false;
    for(i=0;i<objlist.length;i++){
		if(vvalue==objlist[i].value){
			isExist = true;
			break;
		}
	}
	if (isExist==false){
        var oOption = document.createElement("OPTION");
        oOption.text= vtext;
        oOption.value= vvalue;
	    objlist.add(oOption); 
	}
}


function delfromlist(objlist){
     for (l=objlist.length-1;l>=0;l--){ 
         if (objlist.options[l].selected){
			 objlist.remove(l);
     	 } 	
    }	
}

	function openWnd(url,width,height){
		var top = screen.availHeight/2-260;
		var left = screen.availWidth/2-150;
		window.open(url,"","width="+width+",height="+height+",scrollbars=yes,menubar=no,location=no,toolbar=no,top="+top+",left="+left);
	}
	
			function go(objform,type){
			var tmp = 0;
			tmp = parseInt(objform.pageno.value);
			if (type==1)
				tmp = tmp + 1;
			else
				tmp = tmp - 1;
			objform.pageno.value = tmp;
			objform.submit();
		}
