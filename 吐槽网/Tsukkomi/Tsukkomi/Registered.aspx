﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registered.aspx.cs" Inherits="Tsukkomi.Registered" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>吐槽网</title>
    <link rel="stylesheet" href="/Content/css/cs1s.css">
    <script src="/Content/js/jquery-3.3.1.min.js"></script>
</head>

<body>
    <form action="#" runat="server" method="post">
        <div class="header">
            <div class="top">
                <img src="/Content/img/web_logo.png" alt="">
            </div>
            <div class="nav">
                <ul class="inner">
                    <li><a href="#">热门</a></li>
                    <li><a href="#">精华</a></li>
                    <li><a href="#">最新</a></li>
                    <li><a href="#">投稿</a></li>
                    <li><a href="#">手机版</a></li>
                </ul>
            </div>
        </div>
        <div class="main">
            <div class="inner">
                <h1>有账号，更有福</h1>
                <div class="box">
                    <div class="left">
                        <ul>
                            <li><a href="#">QQ账号登录</a></li>
                            <li><a href="#">新浪微博账号登录</a></li>
                            <li><a href="#">人人网账号登录</a></li>
                            <li><a href="#">百度账号登录</a></li>
                            <li><a href="#">开心网账号登录</a></li>
                            <li><a href="#">盛大通行证登录</a></li>
                        </ul>
                    </div>
                    <div class="right">
                        <div class="zhuce">
                            <h2 id="he2">注册吐槽网 <span>已有账号？<a href="Login.aspx">登录</a></span></h2>
                            <ul>
                                <li>邮箱：
<%--                                <input type="text" placeholder="用户名邮箱">--%>
                                    <asp:TextBox ID="username" placeholder="用户名/邮箱" runat="server"></asp:TextBox>
                                </li>
                                <li>昵称：
<%--                                <input type="text" placeholder="请填写昵称">--%>
                                    <asp:TextBox ID="nickname" placeholder="请填写昵称" runat="server"></asp:TextBox>
                                </li>
                                <li>密码：
<%--                                <input type="password" placeholder="密码">--%>
                                    <asp:TextBox ID="password" runat="server" placeholder="密码" TextMode="Password"></asp:TextBox>
                                </li>
                                <li>
                                    <asp:Label ID="numberCode" runat="server" Text="请获取验证码"></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text="换一个" CssClass="numBtn"></asp:Label>
                                    <asp:TextBox ID="Verification" runat="server"></asp:TextBox>
                                </li>
                                <li>
                                    <input type="checkbox" checked="checked">我已阅读并且同意<a href="#">吐槽网用户使用协议</a>
                                </li>
                                <li>
                                    <%--<button>注册</button>--%>
                                    <asp:Button ID="btn" runat="server" Text="登录" CssClass="btn" OnClick="btn_Click" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="fl">
                    <p>一个已被用户注册访问超过<span>13,000,000,000</span>次</p>
                    <p>帮助了超过<span>10,000,000</span>学会吐槽的网络</p>
                    <p>每天有超过<span>9,000,000</span>人通过吐槽网和移动APP解决他们的欢乐问题</p>
                    <p>现在这些教学还在不断的增长着，欢迎来一起使用吐槽网</p>
                </div>
                <div class="fr">
                    <ul>
                        <li>
                            <h4>关注73.3万</h4>
                            <p>点击进入</p>
                            <p>吐槽网官方微博</p>
                        </li>
                        <li>
                            <h3>关注9.7万</h3>
                            <p>点击进入</p>
                            <p>吐槽网QQ空间</p>
                        </li>
                        <li>
                            <h2></h2>
                            <p>扫描二维码添加</p>
                            <p>吐槽网为微信好友</p>
                        </li>
                        <li class="mr0">
                            <h1></h1>
                            <p>扫描二维码下载</p>
                            <p>吐槽网手机客户端</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="foot">
                <a href="#">公司简介</a>
                <a href="#">企业文化</a>
                <a href="#">公司动态</a>
                <a href="#">免责声明</a>
                <a href="#">联系我们</a>
                <a href="#">招贤纳士</a>
                <a href="#">商务合作</a>
                <a href="#">网站地图</a>
                <a href="#">友情连接</a>
                <a href="#">吐槽网移动APP</a>
                <p>ICP证号：京ICP备14030359号 京公网安备11010802009977 Copyright @ 2003-2014 MEISHIJ CO.LTD</p>
            </div>
        </div>
    </form>
</body>
        <script src="/Content/js/Tsukkomi.js"></script>
</html>
