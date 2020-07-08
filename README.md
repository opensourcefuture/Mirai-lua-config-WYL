<div align="center">
   <img width="160" src="docs/mirai.png" alt="logo"></br>

   <img width="95" src="docs/mirai.svg" alt="title">
   
## MiraiAndroid配置(来自wyl)

(请使用md阅读器来阅读md文件)<br>
</div>
-1. 什么是Mirai?
 - Mirai是以 OICQ(QQ) 协议驱动的高性能机器人开发框架 [Mirai](https://github.com/mamoe/mirai)
 
-2. 什么是MiraiAndroid(MA)?
 - MA是Mirai在安卓运行的广泛采取方案<br>
 当然你也可以使用Termux运行Linux，再通过Linux运行MiraiOK/mirai-console<br>
 (理论上主要有Java环境，都能运行Mirai)
 
-3. 如何使用作者配置的Mirai?
- 请先安装ma(miraiandroid)<br>
再解压到根目录(即 /storage/emulated/0/)<br>
参照[旧版教程]()
##### 来自作者的好心提醒
>MT管理器是用来写lua脚本的<br>
(lua目录在/storage/emulated/0/Android/data/io.github.mzdluo123.mirai.android/files/scripts/ )
记得将作者QQ号(1770747317)改为自己的QQ号<br>
(视情况而定。比如"骂我"模块，不建议修改)<br>

#### 作者提醒:
>想要停用的模块在lua脚本里可以使用"--"开头来实现<br>
(记得把整个模块都禁用，即将if到end之间的所有语句都使用"--"开头来实现禁用)<br>

### To-do List

- [ ] 模块拆分
>即通过MiraiAndroid内置的模块管理功能实现关闭模块

- [ ] 功能增加
>靠反馈来选择性添加功能(作者是一个刚加入Mirai开发圈的萌新)

- [ ] 易于使用
>MiraiAndroid操作模块化自动编写(采用中文编写，由编译器翻译成Mirai可用的代码)

- [ ] MiraiAndroid开发简化&普及
有任何问题请使用<br>
[作者github](https://github.com/opensourcefuture)的issue提出<br>
(QQ上基本不解决问题)

###### readme.md文档暂时不全，请做等待(排版的问题等我学会[markdown语言](http://note.youdao.com/iyoudao/?p=2411&vendor=unsilent14)再说)
>什么是Markdown？Markdown是一种轻量级的「标记语言」，通常为程序员群体所用，目前它已是全球最大的技术分享网站 GitHub 和技术问答网站 StackOverFlow 的御用书写格式。

**非技术类笔记用户，千万不要被「标记」、「语言」吓到，Markdown的语法十分简单，常用的标记符号不超过十个，用于日常写作记录绰绰有余，不到半小时就能完全掌握。**
