<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowNowTime.aspx.cs" Inherits="ShowNowTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>当前时间：</label><span id="txt"></span>
        <br />
        <label>停留时间：</label><span id="time"></span>
    </div>
    </form>

    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var secound = 0;
        var min = 0;
        var hour = 0;
        $(function () {
            startTime();
            interval();
        });
        function startTime() {
            var today = new Date();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            $("#txt").html(h + ":" + m + ":" + s);
            t = setTimeout("startTime()", 500);
        }
        function checkTime(i){
            if(i<10){
                i="0"+i;
            }
            return i;
        }
        function interval(){
            secound++;
            if (min == 60) {
                min = 0;
                hour++;
            }
            if (secound == 60) {
                secound = 0;
                min++;
            }
            $("#time").html(hour + "时" + min + "分" + secound + "秒");
            setTimeout("interval()", 1000);
        }
    </script>
</body>
</html>
