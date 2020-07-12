<div align="center">
   <img width="160" src="docs/mirai.png" alt="logo"></br>

   <img width="95" src="docs/mirai.svg" alt="title">
   
# MiraiAndroid简易配置(来自wyl)

(请使用Markdown（简称Md）阅读器来阅读md文件),这里提供[纯纯写作](https://github.com/opensourcefuture/MiraiAndroid-WYL/blob/master/%E7%BA%AF%E7%BA%AF%E5%86%99%E4%BD%9C_16.5.4.apk)和[有道云笔记Android](http://note.youdao.com/download.html?auto=1#android)&[有道云笔记PC](http://download.ydstatic.com/notewebsite/downloads/YNote.exe)<br>

</div>

>什么是Markdown？

[Markdown](http://note.youdao.com/iyoudao/?p=2411&vendor=unsilent14)是一种轻量级的「标记语言」，通常为程序员群体所用，目前它已是全球最大的技术分享网站 GitHub 和技术问答网站 StackOverFlow 的御用书写格式。

**非技术类笔记用户，千万不要被「标记」、「语言」吓到，Markdown的语法十分简单，常用的标记符号不超过十个，用于日常写作记录绰绰有余，不到半小时就能完全掌握。**

----------------------我是分割线------------------

## 进入正题<br>

本~~项目~~MA配置基于[Mirai-lua](https://github.com/only52607/lua-mirai),基本用于MA,已更新MP(Mirai_PC)版

### -1. 什么是Mirai?
 - Mirai是以 OICQ(QQ) 协议驱动的高性能机器人开发框架 [Mirai](https://github.com/mamoe/mirai)
 
### -2. 什么是MA?
 - [MiraiAndroid(MA)](https://github.com/mzdluo123/MiraiAndroid)是Mirai在安卓运行的广泛采取方案<br>
 当然你也可以[使用Termux运行Linux](https://stageguard.top/2020/04/01/run-qqbot-on-termux-android/)，再通过Linux运行MiraiOK/mirai-console<br>
 (理论上主要有Java环境，都能运行Mirai)
 
### -3. Mirai-lua是什么?
- Mirai-lua是Mirai的lua脚本sdk，算是Mirai的一个分支吧&#8195;~~lua-mirai其实可以独立于Mirai-console存在~~&#8195;,这个分支在Mirai-Android上广泛使用
 
### -4. 如何使用作者配置的Mirai?
- 请先安装[MA(MiraiAndroid)](https://github.com/opensourcefuture/MiraiAndroid-WYL/blob/master/MiraiAndroid_2.9.4.apk)<br>
再解压到[根目录](https://zhidao.baidu.com/question/1579269669391329660.html)(即 /storage/emulated/0/)<br>
参照[旧版教程](这里等以后补链)

### -5. 我要找的配置包在哪里?
>点击下方下载👇👇👇👇<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;[**百度网盘**]()<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;👆不掉线，但容易被封<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;[**蓝奏云**]()<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;👆超过大小无法上传，因此暂时留空吧&#8195;(等哪位[hxd](http://ol.kuai8.com/news/290620.html)给我打钱再说)<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;[**Oneindex**]()<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;👆经常性服务器掉线,不限制流量和上传大小,而且慢(我自建的，流量走微软OneDrive服务器，然后同上👆)请使用多线程下载工具如 IDM & ADM <br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;[**茸之爪直链下载**]() <br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;👆偶尔服务器掉线(已经挂了正在抢修)<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;[**Github下载**](https://github.com/opensourcefuture/MiraiAndroid-WYL/releases/tag/v0.01)<br>
&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;&#8195;👆慢速不封，理论永久&#8195;除非我[删库跑路](https://www.lxybaike.com/index.php?doc-view-14816.html)了<br>

### -6. 有没有其他可用的的lua脚本?在哪里可以获取?
- lua-mirai&#8195;sdk作者的demo插件[点此进入](https://github.com/only52607/lua-mirai/tree/master/demos)

#### 作者提醒:
>想要停用的模块在lua脚本里可以使用**'--'开头**来实现<br>
(记得把整个模块都禁用，即将if到end之间的所有语句都使用"--"开头来实现禁用)<br>

#### 来自作者的好心提醒
>写lua脚本可用[MT管理器](https://github.com/opensourcefuture/MiraiAndroid-WYL/blob/master/MT%E7%AE%A1%E7%90%86%E5%99%A8_2.9.1.apk)<br>
(lua目录在/storage/emulated/0/Android/data/io.github.mzdluo123.mirai.android/files/scripts/ )
记得将作者QQ号(1770747317)改为自己的QQ号<br>
(视情况而定。比如"骂我"模块，不建议修改，建议禁用)<br>

##### To-do List

- [ ] 模块拆分
>即通过MiraiAndroid内置的模块管理功能实现关闭模块

- [ ] 功能增加
>靠反馈来~~选择性~~添加功能~~(作者是一个刚加入Mirai开发圈的萌新&学生党，技术有限)~~

- [ ] 易于使用
>MiraiAndroid操作模块化&#8195;~~自动~~编写(采用~~中文~~编写，由[编译器](https://baike.baidu.com/item/%E7%BC%96%E8%AF%91%E5%99%A8/8853067?fr=aladdin)翻译成Mirai可用的代码)

- [ ] MiraiAndroid开发简化&普及
>使普通人也能学会使用MiraiAndroid<br>
暂时考虑使用[图形编程](https://zhidao.baidu.com/question/563066998.html)类似的方案

有任何问题请使用<br>
[Github](https://github.com/opensourcefuture/MiraiAndroid-WYL)的issue提出<br>
(QQ上基本不解决问题)

##### **README.md文档暂时不全，请做等待**<br>
>(排版的问题等我学会Markdown语言再说)


