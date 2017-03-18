<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.util.*, java.sql.*" pageEncoding="utf-8"%>
<%  request.setCharacterEncoding("utf-8");
	int juri = -1;
	if(request!=null){
		String user = request.getQueryString();
		if(user.isEmpty()){
			juri = -1;
		}
		else if (user.equals("normal-user")){
			juri = 0;
		}
		else if (user.equals("admin")){
			juri = 1;
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>ML首页</title>
    <link rel="shortcut icon" href="img/logo/logo_red.png">
    <link rel="stylesheet" href="css/HorizontalScrollstyle.css">
    <link rel="stylesheet" href="css/public/myLayout.css">
    <link rel="stylesheet" href="css/Carousel.css">
    <link rel="stylesheet" href="css/public/header_footer.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<header>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand"><img id="header-logo"  src="img/logo/logo_white.png" alt="A"></a>
            </div>
            <div class="header-menu">
                <ul class="nav navbar-nav">
                    <li><a href="#">实战</a></li>
                    <li class="dropdown">
                        <a href="#">路径<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" class="glyphicon glyphicon-fire">&nbsp;前端工程师</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-phone">&nbsp;Android工程师</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-unchecked">&nbsp;PHP工程师</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-leaf">&nbsp;Java工程师</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-hdd">&nbsp;Linux运维工程师</a></li>
                        </ul>
                    </li>
                    <li><a href="#">猿问</a></li>
                    <li class="dropdown">
                        <a href="#">极客社区<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" class="glyphicon glyphicon-question-sign">&nbsp;技术问答</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-globe">&nbsp;Wiki</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-comment">&nbsp;社群</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-save">&nbsp;资源下载</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" class="glyphicon glyphicon-phone"></a></li>
                    <%if (juri == -1){ %>
                    <li><a href="login.html">登录</a></li>
                    <li><a href="register.jsp">注册</a></li>
                    <%} else if (juri == 0){%>
                    <li class="dropdown">
                        <a href="#" class="glyphicon glyphicon-user"></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" class="glyphicon glyphicon-pencil">&nbsp;学习中心</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class=" glyphicon glyphicon-home">&nbsp;个人主页</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-bell">&nbsp;消息通知</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-cog">&nbsp;账号设置</a></li>
                            <li><a href="index.jsp?" class="glyphicon glyphicon-off">&nbsp;退出登录</a></li>
                        </ul>
                    </li>
                    <%} else{%>
                    <li class="dropdown">
                        <a href="#" class="glyphicon glyphicon-user"></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" class=" glyphicon glyphicon-home">&nbsp;管理员中心</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="glyphicon glyphicon-cog">&nbsp;用户账号管理</a></li>
                            <li><a href="index.jsp?" class="glyphicon glyphicon-off">&nbsp;退出登录</a></li>
                        </ul>
                    </li>
                    <%} %>
                </ul>
                <div class="nav navbar-nav navbar-right">
                    <form id="rearch-box" role="search">
                        <input type="text" placeholder="Search">
                        <button><span class="glyphicon glyphicon-search"></span></button>
                    </form>
                </div>
            </div>
        </div>
    </nav>
</header>

<main class="main">
    <!-- 轮播图 -->
    <div id="carousel-box">
        <div id="img_list">
            <a href="#"><img class="LunboImg" src="img/index/1.jpg" alt="1"/></a>
            <a href="#"><img class="LunboImg" src="img/index/2.jpg" alt="2"/></a>
            <a href="#"><img class="LunboImg" src="img/index/3.jpg" alt="3"/></a>
            <a href="#"><img class="LunboImg" src="img/index/4.jpg" alt="4"/></a>
            <a href="#"><img class="LunboImg" src="img/index/5.jpg" alt="5"/></a>
        </div>
        <div id="point">
            <span></span>
            <span class="on"></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <!--课程滚条-->
    <div  id="Horizontal">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12 col-lg-12">
                    <div class="page-header">
                        <h2><span class="glyphicon glyphicon-signal"></span>&nbsp;&nbsp;最新课程<a href="#" class="more_inf">更多 ></a></h2>
                    </div>
                </div>
            </div>
            <div class="row"  id="Horizontal-Scroll">
                <div id="content-1" class="content horizontal-images">
                    <table id="light-box">
                        <tr>
                            <ul >
                                <td>
                                    <li>
                                        <div class="flip-container" >
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container" >
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container" >
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container">
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container" >
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container">
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container" >
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                                <td>
                                    <li>
                                        <div class="flip-container" >
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="img/index/JS.jpg" />
                                                    <p class="img_under">JS基础学习</p>
                                                </div>
                                                <a href="#" class="back">
                                                    <h3>JS基础</h3>
                                                    <p>当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换当鼠标滑过包含块时，元素整体翻转180度，以实现正反面的切换</p>
                                                    <div class="button_">开始学习</div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </td>
                            </ul>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="container class_show">
        <div class="row">
            <div class="col-xs-12 col-md-12 col-lg-12">
                <div class="page-header">
                    <h2> <span class="glyphicon glyphicon-signal"></span>&nbsp;&nbsp;免费好课<a href="#" class="more_inf">更多 ></a></h2>
                </div>
            </div>
        </div>
        <div class="row"  style="box-shadow: 3px 3px 5px rgba(9,9,9,0.5);">
            <div class="col-xs-2 col-md-2 col-lg-2 work_show_left" style="background-image: url(img/index/Web1.png);background-size: cover">
                <br>
                <h2>Web<br>前端工程师</h2>
                <p><a href="#">职业路径 ></a></p>
                <ul>
                    <li><a href="#">jQuery源码探索之旅1</a> </li>
                    <li><a href="#">jQuery源码探索之旅2</a> </li>
                    <li><a href="#">jQuery源码探索之旅3</a> </li>
                </ul>
            </div>
            <div class="col-xs-8 col-md-8 col-lg-8 work_show_middle">
                <a href="#">
                    <div class="row">
                        <div class="col-xs-8 col-md-8 col-lg-8" style="background-image:url(img/index/IP2.jpg);background-size:cover;">
                            <h3>JS高级编程</h3>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4" style="padding:0px;margin-bottom: 10px">
                            <img src="img/index/SmallIP1.jpg">
                            <div class="intr_other">
                                <div class="intr_detail">
                                    <p>中</p>
                                    <p>响应式布局</p>
                                    <p>摆脱设备大小的限制</p>
                                </div>
                                <p class="people_num">共有8000人正在学习</p>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="row">
                        <div class="col-xs-8 col-md-8 col-lg-8" style="background-image:url(img/index/IP1.jpg);background-size:cover;">
                            <h3>JS高级编程</h3>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4" style="padding:0px;margin-bottom: 10px">
                            <img src="img/index/SmallIP2.jpg">
                            <div class="intr_other">
                                <div class="intr_detail">
                                    <p>中</p>
                                    <p>响应式布局</p>
                                    <p>摆脱设备大小的限制</p>
                                </div>
                                <p class="people_num">共有8000人正在学习</p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xs-2 col-md-2 col-lg-2 work_show_right">
                <a href="#"><img src="img/index/SmallIP3.jpg"></a>
                <div></div>
                <ul>
                    <li><a href="#">鼠标悬浮效果</a> </li>
                    <li><a href="#">阿里云在线编辑</a> </li>
                    <li><a href="#">AngulJS实战</a> </li>
                    <li><a href="#">Html/CSS基础</a> </li>
                    <li><a href="#">Html/CSS进阶</a> </li>
                    <li><a href="#">Html/CSS高级</a> </li>
                    <li><a href="#">Html/CSS实战</a> </li>
                </ul>
            </div>
        </div>
        <div class="row"  style="box-shadow: 3px 3px 5px rgba(9,9,9,0.5);">
            <div class="col-xs-2 col-md-2 col-lg-2 work_show_left" style="background-image: url(img/index/Web2.png);background-size: cover">
                <br>
                <h2>Java<br>工程师</h2>
                <p><a href="#">职业路径 ></a></p>
                <ul>
                    <li><a href="#">jQuery源码探索之旅1</a> </li>
                    <li><a href="#">jQuery源码探索之旅2</a> </li>
                    <li><a href="#">jQuery源码探索之旅3</a> </li>
                </ul>
            </div>
            <div class="col-xs-8 col-md-8 col-lg-8 work_show_middle">
                <a href="#">
                    <div class="row">
                        <div class="col-xs-8 col-md-8 col-lg-8" style="background-image:url(img/index/IP2_2.jpg);background-size:cover;">
                            <h3>JS高级编程</h3>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4" style="padding:0px;margin-bottom: 10px">
                            <img src="img/index/SmallIP10.jpg">
                            <div class="intr_other">
                                <div class="intr_detail">
                                    <p>中</p>
                                    <p>响应式布局</p>
                                    <p>摆脱设备大小的限制</p>
                                </div>
                                <p class="people_num">共有8000人正在学习</p>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="row">
                        <div class="col-xs-8 col-md-8 col-lg-8" style="background-image:url(img/index/IP2_1.jpg);background-size:cover;">
                            <h3>JS高级编程</h3>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4" style="padding:0px;margin-bottom: 10px">
                            <img src="img/index/SmallIP9.jpg">
                            <div class="intr_other">
                                <div class="intr_detail">
                                    <p>中</p>
                                    <p>响应式布局</p>
                                    <p>摆脱设备大小的限制</p>
                                </div>
                                <p class="people_num">共有8000人正在学习</p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xs-2 col-md-2 col-lg-2 work_show_right">
                <a href="#"><img src="img/index/SmallIP8.jpg"></a>
                <div></div>
                <ul>
                    <li><a href="#">鼠标悬浮效果</a> </li>
                    <li><a href="#">阿里云在线编辑</a> </li>
                    <li><a href="#">AngulJS实战</a> </li>
                    <li><a href="#">Html/CSS基础</a> </li>
                    <li><a href="#">Html/CSS进阶</a> </li>
                    <li><a href="#">Html/CSS高级</a> </li>
                    <li><a href="#">Html/CSS实战</a> </li>
                </ul>
            </div>
        </div>
        <div class="row"  style="box-shadow: 3px 3px 5px rgba(9,9,9,0.5);">
            <div class="col-xs-2 col-md-2 col-lg-2 work_show_left" style="background-image: url(img/index/Web3.png);background-size: cover">
                <br>
                <h2>Android<br>工程师</h2>
                <p><a href="#">职业路径 ></a></p>
                <ul>
                    <li><a href="#">jQuery源码探索之旅1</a> </li>
                    <li><a href="#">jQuery源码探索之旅2</a> </li>
                    <li><a href="#">jQuery源码探索之旅3</a> </li>
                </ul>
            </div>
            <div class="col-xs-8 col-md-8 col-lg-8 work_show_middle">
                <a href="#">
                    <div class="row">
                        <div class="col-xs-8 col-md-8 col-lg-8" style="background-image:url(img/index/IP3_2.jpg);background-size:cover;">
                            <h3>JS高级编程</h3>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4" style="padding:0px;margin-bottom: 10px">
                            <img src="img/index/SmallIP7.jpg">
                            <div class="intr_other">
                                <div class="intr_detail">
                                    <p>中</p>
                                    <p>响应式布局</p>
                                    <p>摆脱设备大小的限制</p>
                                </div>
                                <p class="people_num">共有8000人正在学习</p>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="row">
                        <div class="col-xs-8 col-md-8 col-lg-8" style="background-image:url(img/index/IP3_1.jpg);background-size:cover;">
                            <h3>JS高级编程</h3>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4" style="padding:0px;margin-bottom: 10px">
                            <img src="img/index/SmallIP6.jpg">
                            <div class="intr_other">
                                <div class="intr_detail">
                                    <p>中</p>
                                    <p>响应式布局</p>
                                    <p>摆脱设备大小的限制</p>
                                </div>
                                <p class="people_num">共有8000人正在学习</p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xs-2 col-md-2 col-lg-2 work_show_right">
                <a href="#"><img src="img/index/SmallIP5.jpg"></a>
                <div></div>
                <ul>
                    <li><a href="#">鼠标悬浮效果</a> </li>
                    <li><a href="#">阿里云在线编辑</a> </li>
                    <li><a href="#">AngulJS实战</a> </li>
                    <li><a href="#">Html/CSS基础</a> </li>
                    <li><a href="#">Html/CSS进阶</a> </li>
                    <li><a href="#">Html/CSS高级</a> </li>
                    <li><a href="#">Html/CSS实战</a> </li>
                </ul>
            </div>
        </div>
    </div>
</main>

<footer>
    <div class="container">
        <div class="row">
            <a href="##"><img src="img/logo/Sina.png"></a>
            <a href="##"><img src="img/logo/wechat.png"></a>
            <a href="##"><img src="img/logo/qq.png"></a>
            <a href="##"><img src="img/logo/qqBlog.png"></a>
            <a href="##"><img src="img/logo/qqSpace.png"></a>
            <p>
                <a href="#">企业合作</a>
                <a href="#">联系我们</a>
                <a href="#">讲师招募</a>
                <a href="#">常见问题</a>
                <a href="#">意见反馈</a>
                <a href="#">友情链接</a>
            </p>
        </div>
    </div>
    <div>
        <p style="width:100%; height:1px; background-color: #ccc;margin-bottom: 2.5rem"></p>
        <p>&copy; 2016 www.bl.com  京ICP备130236642号(伪造)</p>
    </div>
</footer>
<script type="text/javascript" src="js/Carousel.js"></script>
<script type="text/javascript" src="js/Scroll.js"></script>
<script type="text/javascript" src="js/header.js"></script>
</body>
</html>