<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/12 0012
  Time: 上午 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mapping.SeatsreserveMapperI" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@page import="util.MyBatisUtil" %>
<%@page import="domain.Seatsreserve" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <title>TicketBookingSystem</title>

    <style>
   .calenderpic{float:left;  margin-top:-9px; margin-left:-8px;}
        .content{
            display:inline;

        }

        .moviepic{float:left; display:inline; margin-top:0; margin-left:5px;}
        .form-inline{float:right; display:inline; margin-top:0; margin-left:5px;}

        .table-striped{width: 20%}

      .cinema{float:left;  margin-top:-102px; margin-left:550px;}
        .container{float:left;  margin-left: 20px}
    </style>

</head>
<body>

<nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="http://localhost:8080/index.jsp">
        TicketBooking
    </a>
    <div class="pos-f-t">
        <%--<div class="collapse" id="navbarToggleExternalContent">--%>
            <%--<div class="bg-dark p-4">--%>
                <%--<h4 class="text-white">Collapsed content</h4>--%>
                <%--<span class="text-muted">Toggleable via the navbar brand.</span>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<nav class="navbar navbar-dark bg-dark">--%>
            <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">--%>
                <%--<span class="navbar-toggler-icon"></span>--%>
            <%--</button>--%>
        <%--</nav>--%>
    <%--</div>--%>
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

</nav>
<br>
<div class="content">
    <div class="moviepic">
        <img src="images/movie.jpg">
    </div>
    <strong>kingsman 2</strong><br>
    <strong>Description: </strong><div class="discription">When their headquarters are destroyed and the world is held hostage, the Kings
    man's journey leads them to the discovery of an allied spy organization in the US. These two elite secret organizations must band together to defeat a common enemy.</div>

    <strong>Director: </strong><div class="director">Matthew Vaughn</div>
    <strong>Actors:</strong>  <div class="actor">Colin Firth, Taron Egerton, Mark Strong, Edward Holcroft and Sophie Cookson reprising their roles from the first film, with Julianne Moore, Halle Berry, Pedro Pascal, Elton John, Channing Tatum and Jeff Bridges </div>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

</div>

<div class="container">
    <form action="" class="form-horizontal"  role="form">


        <div class="form-group">
            <label for="dtp_input2" class="col-md-2 control-label">Date Picking</label>

            <div class="input-group date form_date col-md-5" data-date="2017-09-25" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                <input class="form-control" size="14" type="text" value="" readonly>
                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"><img class="calenderpic" src="images/calender.png"> </span></span>

            </div>
            <input type="hidden" id="dtp_input2" value="" /><br/>
        </div>


    </form>
</div>

<div class="cinema">
   <div id="ticamount">Tickets amount </div>
    <input type="text" placeholder="amount of tickets" id="ticketsamount">
<button type="button" class="btn btn-dark"  onclick="purchase()" id="Bpurchase">Purchase&Query</button>
<div id="demo" >
<table class="table table-striped" id="table1">

    <tr onClick="change()" >
        <th scope="row" class="Tfront" onClick="changeColor(this)">A</th>

        <td id="A1" onClick="changeColor(this)">1</td>
        <%--<td onClick="changeColor(this)">2</td>--%>
        <%--<td onClick="changeColor(this)">3</td>--%>
        <%--<td onClick="changeColor(this)">4</td>--%>
        <%--<td onClick="changeColor(this)">5</td>--%>
        <%--<td onClick="changeColor(this)">6</td>--%>
        <%--<td onClick="changeColor(this)">7</td>--%>
        <%--<td onClick="changeColor(this)">8</td>--%>
        <td id="A2">2</td>
        <td id="A3">3</td>
        <td id="A4">4</td>
        <td id="A5">5</td>
        <td id="A6">6</td>
        <td id="A7">7</td>
        <td id="A8">8</td>
    </tr>
    <tr onClick="change()" >
        <th scope="row" class="Tfront">B</th>
        <td id="B1">1</td>
        <td id="B2">2</td>
        <td id="B3">3</td>
        <td id="B4">4</td>
        <td id="B5">5</td>
        <td id="B6">6</td>
        <td id="B7">7</td>
        <td id="B8">8</td>
    </tr>
    <tr onClick="change()" >
        <th scope="row" class="Tfront">C</th>
        <td id="C1">1</td>
        <td id="C2">2</td>
        <td id="C3">3</td>
        <td id="C4">4</td>
        <td id="C5">5</td>
        <td id="C6">6</td>
        <td id="C7">7</td>
        <td id="C8">8</td>
    </tr>
    <tr onClick="change()" >
        <th scope="row" class="Tfront">D</th>
        <td id="D1">1</td>
        <td id="D2">2</td>
        <td id="D3">3</td>
        <td id="D4">4</td>
        <td id="D5">5</td>
        <td id="D6">6</td>
        <td id="D7">7</td>
        <td id="D8">8</td>
    </tr>
    <tr onClick="change()" >
        <th scope="row" class="Tfront">E</th>
        <td id="E1">1</td>
        <td id="E2">2</td>
        <td id="E3">3</td>
        <td id="E4">4</td>
        <td id="E5">5</td>
        <td id="E6">6</td>
        <td id="E7">7</td>
        <td id="E8">8</td>
    </tr>
</table>
    <font size="4" style="color:orange">orange block</font>  means already purchased
<div/>

<button type="button" class="btn btn-dark" onclick="booking()">Booking</button>
</div>

    <script type="text/javascript">
   var ticketsamount;
   ticketsamount=0;   //要买的票
   var num=0;
   var time=new Date();
   var MD;
   var availableT;
   function purchase() {

       var ta=document.getElementById("ticketsamount").value;
       ticketsamount=parseInt(ta);
//       availableT=0;
//       num=0;
       //alert(ticketsamount);
   if(availableT==0)
   {
       alert("There is no seats anymore this day");

   }

       testAjax();
   }


  function  testAjax() {

     var Y = time.getFullYear() ;
     var M = (time.getMonth()+1 < 10 ? '0'+(time.getMonth()+1) : time.getMonth()+1);
      var D = time.getDate() ;
      var h = time.getHours() ;
      var m = time.getMinutes();
      var m = time.getMinutes();
      var s = time.getSeconds();
      MD=M+D;
      $.ajax({
          url:"/queryseatsServlet",    //请求的url地址
          type: "POST",
          data: "date="+MD,
          dataType: "text",
          success:function(msg){
            var tableObj = document.getElementById("table1");
            var trObjArr = tableObj.rows;
            console.log("从servlet传回的数据%s",msg);
            var arr=msg.split(",");
            for(var i=0;i<arr.length;i++)
            {
                console.log("元素"+arr[i]);
            }
            console.log("数组长度"+arr.length);
              for (var i = 0; i < 5; i++) {
                  for (var j = 0; j < 9; j++) {

                          trObjArr[i].cells[j].style.backgroundColor="";

                      }
                  }

            for(var k=0;k<arr.length-1;k++)    //############################################  -1
            {
                for (var i = 0; i < 5; i++) {
                    for (var j = 0; j < 9; j++) {
                        if (trObjArr[i].cells[j].id == arr[k]) {
                            trObjArr[i].cells[j].style.backgroundColor="orange";
                            console.log("The%s"+arr[k]+"is going to change color");
                        }
                    }
                }
            }
       }});

   }
    function  queryTicketAvalia(){   //query the avaliable ticket in the database

        var M = (time.getMonth()+1 < 10 ? '0'+(time.getMonth()+1) : time.getMonth()+1);
        var D = time.getDate() ;

        MD=M+D;
        $.ajax({
            url:"/queryseatsServlet",    //请求的url地址
            type: "POST",
            data: "date="+MD,
            dataType: "text",
            success:function(msg){
                var arr=msg.split(",");
                console.log("数组长度"+arr.length);
                 availableT=41-arr.length;
                document.getElementById("ticamount").innerHTML="Tickets Amount:"+availableT;
            }
        });

    }
   function booking() {

        var ticketNum=0;
        var ticketid="";
        var tableObj = document.getElementById("table1");
        var trObjArr = tableObj.rows;
        var mytickets=new Array();

        for(var i=0;i<5;i++)
        {
            for(var j=0;j<9;j++)
            {
              if(  trObjArr[i].cells[j].style.backgroundColor=="yellow")

               {
                  mytickets[ticketNum]= trObjArr[i].cells[j].id;
                   ticketNum= ticketNum+1;
               }
            }
        }
        //alert("tichetNum"+ticketNum+"length"+mytickets.length);
if(ticketNum<ticketsamount)
{
    alert("You need to pick more seats!!!!!!!!!!!!!!!!!");
    return;
}
      if(ticketNum==ticketsamount&&ticketNum==0)
      {
          alert("unavaliable operation");
          window.location.href="index.jsp";
          return;
      }
for(var key in mytickets){
          ticketid=  ticketid+mytickets[key]+",";
        }


        //console.log("tichets String 串%s",ticketid);
        num=0;          //用完赋值为0
       //alert(MD);

       if(confirm("Do you want to spend"+10*ticketsamount+" $ for"+ticketsamount+" tickets"))
       {
           window.location.href="/purchaseServlet?ticketid="+ticketid+"&ticketsdate="+MD;
       }
       else
       {//
           alert("You cancel the seats reservation");
       }
//
    }

    function change(change) {

       var oObj = window.event.srcElement;
        if (oObj.style.backgroundColor == "yellow") {
            oObj.style.backgroundColor = "";
            num--;
            return;
        }
        //alert(change.tagName.toLowerCase());
        if(oObj.tagName.toLowerCase() == "td"&&num<ticketsamount&&oObj.style.backgroundColor != "orange"){
                num=1;   //already have one
            for (var i = 0; i < document.all.table1.getElementsByTagName('td').length; i++) {
//                   ;
               if( document.all.table1.getElementsByTagName('td')[i].style.backgroundColor =="yellow")
               {
                   num++;
               }
                }
            oObj.style.backgroundColor = "yellow";

        }
        console.log("num 数量是%d",num);
    }
</script>

 <%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <%--<script type="text/javascript" src="js/jquery-1.8.3.min.js" charset="UTF-8"></script>--%>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript">


        $('.form_date').datetimepicker(

            {
                weekStart: 1,
                startDate:2017-09-25,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0

        }).on('changeDate', function(ev){
//            if (ev.date.valueOf()) {}
            var date = (new Date());    //当前时间
            var today = new Date(date.getFullYear(), date.getMonth(), date.getDate()).getTime();

            if(ev.date!=null&&ev.date<today)
       {
           alert("you can not choose the past day,please choose again");
           return;
       }
        time=ev.date;

        queryTicketAvalia();

           // alert(ev.date.valueOf());
        });

    </script>
</body>
</html>
