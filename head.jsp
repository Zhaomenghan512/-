<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-21
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body,ul,li,a
        {
            padding: 0;
            margin: 0;
        }
        body
        {
            margin-top: 50px;
            background-color:#e6e6e6;
            color: #fff;
        }
        .menu
        {
            font-size: 0;
            padding: 0;
            height: 50px;
            padding-left: 5%;
            background-color: #00a2ca;
            position: relative;
        }
        .menubar
        {
            margin: 0 auto;
            position: absolute;
            list-style-type: none;
            width: 100%;
            overflow-y: auto;
        }

        .menubar li
        {
            padding:0px 5px;
            display:inline-block;
            cursor: pointer;
            line-height: 50px;
        }
        .menubar li:hover
        {
            background-color:#0095bb;
        }
        .menubar li.menu-value
        {
            background-color: #0095bb;
        }

        .menubar a
        {
            display: block;
            height: 50px;
            font-family: "微软雅黑","Microsoft Yahei","Hiragino Sans GB",tahoma,arial,"宋体" ;
            font-size: 15px;
            text-align: center;
            text-decoration: none;
            color: #fff;
        }
        .box {
            width: 500px;
            height: 300px;
            border: 1px solid #ccc;
            margin: 20px auto;
            padding: 5px;
            align:center;
        }
        .inner{
            width: 500px;
            height: 300px;
            position: relative;
            overflow: hidden;
        }
        .inner img{
            width: 500px;
            height: 300px;
            vertical-align: top;
        }
        ul {
            width: 1000%;
            position: absolute;
            list-style: none;
            left:0;
            top: 0;
        }
        .inner li{
            float: left;

        }

        ol {
            position: absolute;
            height: 20px;
            right: 20px;
            bottom: 20px;
            text-align: center;
            padding: 5px;
        }
        ol li{
            display: inline-block;
            width: 20px;
            height: 20px;
            line-height: 20px;
            background-color: #fff;
            margin: 5px;
            cursor: pointer;

        }
        ol .current{
            background-color: red;
        }
        #arr{
            display: none;
        }
        #arr span{
            width: 40px;
            height: 40px;
            position: absolute;
            left: 5px;
            top: 50%;
            margin-top: -20px;
            background: #fff;
            cursor: pointer;
            line-height: 40px;
            text-align: center;
            font-weight: bold;
            font-family: '黑体';
            font-size: 30px;
            color: #000;
            opacity: 0.5;
            border: 1px solid #fff;
        }
        #arr #right {
            right: 5px;
            left: auto;
        }
    </style>
</head>
<body>
<div>
    <p align="center"><img width="80%" height="170px" src="images/Title.png"></p>
</div>
<div class="menu">
    <ul class="menubar">
        <li class="menu-value" ><a href="index.jsp">首页</a></li>
        <li class="" ><a href="TypeNews.jsp?type=体育">体育</a></li>
        <li class="" ><a href="TypeNews.jsp?type=娱乐">娱乐</a></li>
        <li class="" ><a href="TypeNews.jsp?type=股票">股票</a></li>
        <li class="" ><a href="TypeNews.jsp?type=财经">财经</a></li>
        <li class="" ><a href="TypeNews.jsp?type=汽车">汽车</a></li>
        <li class="" ><a href="TypeNews.jsp?type=科技">科技</a></li>
    </ul>
</div>
<div class="box" id="box">
    <div class="inner">
        <ul>
            <li><a href="#"><img src="images/1.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/2.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/3.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/4.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/5.jpg" alt=""></a></li>

        </ul>

        <ol class="bar">

        </ol>
        <!--左右焦点-->
        <div id="arr">
                    <span id="left">
                        <
                    </span>
            <span id="right">
                        >
                    </span>
        </div>

    </div>
</div>
</body>
</html>
<script>
    function my$(id) {
        return document.getElementById(id);
    }

    //获取各元素，方便操作
    var box=my$("box");
    var inner=box.children[0];
    var ulObj=inner.children[0];
    var list=ulObj.children;
    var olObj=inner.children[1];
    var arr=my$("arr");
    var imgWidth=inner.offsetWidth;
    var right=my$("right");
    var pic=0;
    //根据li个数，创建小按钮
    for(var i=0;i<list.length;i++){
        var liObj=document.createElement("li");

        olObj.appendChild(liObj);
        liObj.innerText=(i+1);
        liObj.setAttribute("index",i);

        //为按钮注册mouseover事件
        liObj.οnmοuseοver=function () {
            //先清除所有按钮的样式

            for (var j=0;j<olObj.children.length;j++){
                olObj.children[j].removeAttribute("class");
            }
            this.className="current";
            pic=this.getAttribute("index");
            animate(ulObj,-pic*imgWidth);
        }

    }


    //设置ol中第一个li有背景颜色
    olObj.children[0].className = "current";
    //克隆一个ul中第一个li,加入到ul中的最后=====克隆
    ulObj.appendChild(ulObj.children[0].cloneNode(true));

    var timeId=setInterval(onmouseclickHandle,1000);
    //左右焦点实现点击切换图片功能
    box.οnmοuseοver=function () {
        arr.style.display="block";
        clearInterval(timeId);
    };
    box.οnmοuseοut=function () {
        arr.style.display="none";
        timeId=setInterval(onmouseclickHandle,1000);
    };

    right.οnclick=onmouseclickHandle;
    function onmouseclickHandle() {
        //如果pic的值是5,恰巧是ul中li的个数-1的值,此时页面显示第六个图片,而用户会认为这是第一个图,
        //所以,如果用户再次点击按钮,用户应该看到第二个图片
        if (pic == list.length - 1) {
            //如何从第6个图,跳转到第一个图
            pic = 0;//先设置pic=0
            ulObj.style.left = 0 + "px";//把ul的位置还原成开始的默认位置
        }
        pic++;//立刻设置pic加1,那么此时用户就会看到第二个图片了
        animate(ulObj, -pic * imgWidth);//pic从0的值加1之后,pic的值是1,然后ul移动出去一个图片
        //如果pic==5说明,此时显示第6个图(内容是第一张图片),第一个小按钮有颜色,
        if (pic == list.length - 1) {
            //第五个按钮颜色干掉
            olObj.children[olObj.children.length - 1].className = "";
            //第一个按钮颜色设置上
            olObj.children[0].className = "current";
        } else {
            //干掉所有的小按钮的背景颜色
            for (var i = 0; i < olObj.children.length; i++) {
                olObj.children[i].removeAttribute("class");
            }
            olObj.children[pic].className = "current";
        }
    }
    left.οnclick=function () {
        if (pic==0){
            pic=list.length-1;
            ulObj.style.left=-pic*imgWidth+"px";
        }
        pic--;
        animate(ulObj,-pic*imgWidth);
        for (var i = 0; i < olObj.children.length; i++) {
            olObj.children[i].removeAttribute("class");
        }
        //当前的pic索引对应的按钮设置颜色
        olObj.children[pic].className = "current";
    };

    //设置任意的一个元素,移动到指定的目标位置
    function animate(element, target) {
        clearInterval(element.timeId);
        //定时器的id值存储到对象的一个属性中
        element.timeId = setInterval(function () {
            //获取元素的当前的位置,数字类型
            var current = element.offsetLeft;
            //每次移动的距离
            var step = 10;
            step = current < target ? step : -step;
            //当前移动到位置
            current += step;
            if (Math.abs(current - target) > Math.abs(step)) {
                element.style.left = current + "px";
            } else {
                //清理定时器
                clearInterval(element.timeId);
                //直接到达目标
                element.style.left = target + "px";
            }
        }, 10);
    }
</script>