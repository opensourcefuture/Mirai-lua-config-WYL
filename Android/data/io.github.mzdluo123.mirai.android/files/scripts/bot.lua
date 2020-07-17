Event.onLoad = 
    function (bot)

        print("载入bot"..bot:getId().."成功")

        --好友消息监听
        bot:subscribeFriendMsg(
            function(bot, msg, sender)
                if msg:find("夸我") then
                    sender:sendMsg( Msg():setQuote(msg) ..  net.get("https://chp.shadiao.app/api.php"))
                end
                
                if msg:find("动漫导航") then
                    sender:sendMsg("嘀哩嘀哩 http://m.dilidili3.com/") 
                    sender:sendMsg("哔哩哔哩 www.bilibili.com")
                    sender:sendMsg("Acfun http://m.acfun.cn")
                    sender:sendMsg("咕叽咕叽 https://dm.aimuc.cn/wap/")
                end

                if msg:find("骂我") then
                    if sender.id == 1770747317 then
                        sender:sendMsg( Msg():setQuote(msg) ..  net.get("https://nmsl.shadiao.app/api.php?level=min&lang=zh_cn"))
                    else
                        sender:sendMsg( Msg():setQuote(msg) ..  "狐狸狸不能随便骂人呢。")
                    end
                    
                end
                
                 if msg:find("老婆") then
                    if sender.id == 1770747317 then
                        sender:sendMsg( Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
                    else
                        sender:sendMsg( Msg():setQuote(msg)+ net.get("谁是你老婆，死宅恶心心!"))
                    end
                end
                
                if msg:find("狐狸召唤术") then
                    sender:sendMsg("嗷呜，找狐狸狸有什么事？")
                end

            end
        )

        --群消息监听
        bot:subscribeGroupMsg(
            function(bot, msg, group, sender)
                if msg:find("夸我") then
                    group:sendMsg( Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
                end
                
                if msg:find("验证主人") then
                    if sender.id == 1770747317 then
                        group:sendMsg("你是狐狸狸の主人啦~")
                    else
                        group:sendMsg("你不是狐狸狸の主人呢")
                    end
                end
                
                if msg:find("老婆") then
                    if sender.id == 1770747317 then
                        group:sendMsg( Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
                    else
                        group:sendMsg( Msg():setQuote(msg)+ "谁是你老婆，死宅恶心心!")
                    end
                end

                if msg:find("骂我") then
                    if sender.id == 1770747317 then
                        group:sendMsg( Msg():setQuote(msg) ..  net.get("https://nmsl.shadiao.app/api.php?level=min&lang=zh_cn"))
                    else
                        group:sendMsg( Msg():setQuote(msg) ..  "狐狸狸不能随便骂人呢。")
                    end
                    
                end
                
                if msg:find("我想要里番") and sender.id == 1770747317 then
                    group:sendMsg("https://acgttt.com/")
                end
                
                if msg:find("动漫导航列表") then
                    if sender.id == 1770747317 then
                        --group:sendMsg("工具箱 http://www.xiaoxiaoxia.com/links.php")
                        group:sendMsg("嘀哩嘀哩 http://m.dilidili3.com/") 
                        group:sendMsg("哔哩哔哩 www.bilibili.com")
                        group:sendMsg("Acfun http://m.acfun.cn")
                        group:sendMsg("咕叽咕叽 https://dm.aimuc.cn/wap/")
                    else
                        group:sendMsg( Msg():setQuote(msg)+"狐狸狸已经私发你了呢")
                        sender:sendMsg("嘀哩嘀哩 http://m.dilidili3.com/") 
                        sender:sendMsg("哔哩哔哩 www.bilibili.com")
                        sender:sendMsg("Acfun http://m.acfun.cn")
                        sender:sendMsg("咕叽咕叽 https://dm.aimuc.cn/wap/")
                    end
                end

                if msg:find("骂他") then
                    local at
                    for k,v in pairs(msg:toTable()) do
                        if v:find("mirai:at") then
                            at = v
                            break
                        end
                    end
                    
                    group:sendMsg( at .. net.get("https://nmsl.shadiao.app/api.php?lang=zh_cn"))
                end

                if msg:find("复读") and sender.id == 1770747317 then
                    group:sendMsg(msg:setQuote(msg))
                end
                
                if msg:find("撤回") and sender.id == 1770747317 then  
                    msg:recall()
                    --或 msg:getSource():recall()
                    --或 group:recall(msg)
                end

                if msg:find("hso") or msg:find("色图来") or msg:find("不够色") or msg:find("来点涩图") or msg:find("我想要一份色图") then
                    local hso = net.get("https://api.lolicon.app/setu/"):match('"url":"(.-)"'):gsub("\\","")
                    group:sendMsg( Msg():appendImage(hso, group) )
                end
                
                if msg:find("获取舔狗日记")  then
                    group:sendMsg( Msg():setQuote(msg)+"舔狗日记:"+net.get("https://api.ixiaowai.cn/tgrj/index.php"))
                end
                
                if msg:find("mirai一言")  then
                    group:sendMsg( Msg():setQuote(msg)+"你要的一言来了:"+net.get("https://api.ixiaowai.cn/ylapi/index.php"))
                end

                --[[if msg:find("获取头像") then
                    QQnumber = msg:gsub("获取头像","")
                    group:sendMsg(QQnumber)
                    local Avatar = net.get("q.qlogo.cn/g?b=qq&nk="..QQnumber.."&s=640")
                    group:sendMsg( Msg():appendImage(Avatar, group) )
                end]]

                if msg:find("!repeat") then
                    Repeat = msg:gsub("!repeat","")
                    group:sendMsg(Repeat)
                end
--"!repeat"可以替换成别的命令

                if msg:find("hitokoto")  then
                    local yiyan = net.get("https://v1.hitokoto.cn/"):match('"hitokoto":"(.-)","type":"')
                    local source = net.get("https://v1.hitokoto.cn/"):match(',"from":"(.-)","')
                    local author = net.get("https://v1.hitokoto.cn/"):match('"from_who":"(.-)","creator"')
                    group:sendMsg( Msg():setQuote(msg)+"hitokoto一言来了:"+net.get("https://v1.hitokoto.cn/")))
                    group:sendMsg( Msg():setQuote(msg)+Msg("hitokoto一言来了:")+yiyan)
                    group:sendMsg( Msg():setQuote(msg)+Msg("来源")+source)
                    group:sendMsg( Msg():setQuote(msg)+Msg("作者")+author)
                end
                
                if msg:find("冒泡") then
                    group:sendMsg( Msg():setQuote(msg) ..  Msg("戳掉~~"))
                end
                
                if msg:find("潜水") or msg:find("下潜") then
                    group:sendMsg( Msg():setQuote(msg)+Msg("捞起来~~"))
                end
                
                if msg:find("狐狸召唤术") then
                    group:sendMsg( Msg():setQuote(msg)+"嗷呜，找狐狸狸有什么事？")
                end
                
                if msg:find("来点menhera") then
                    local menhera = ("https://api.ixiaowai.cn/mcapi/mcapi.php")
                    group:sendMsg( Msg():appendImage(menhera, group) )
                end
                
                if msg:find("来点壁纸") then
                    local bz = ("https://api.ixiaowai.cn/gqapi/gqapi.php")
                    group:sendMsg( Msg():appendImage(bz, group) )
                end
                
                if msg:find("来点二次元") then
                    local erciyuan = ("https://api.ixiaowai.cn/api/api.php")
                    group:sendMsg( Msg():appendImage(erciyuan, group) )
                end

                if msg:find("营销号生成") then
                    A = string.sub(msg,string.find(msg,'f')+1,string.find(msg,'l')-1)
                    B = string.sub(msg,string.find(msg,'l')+1)
                    group:sendMsg(''..A..''..B..'是怎么回事呢？'..A..'相信大家都很熟悉,但是,'..A..''..B..'是怎么回事呢，下面让小编带大家一起了解吧。')
                    group:sendMsg(  ''..A..''..B..'其实是因为这样,大家可能会很惊讶'..A..'怎么会'..B..'呢？但事实就是这样，小编感到很惊讶。')
                    group:sendMsg('这就是关于'..A..''..B..'的事情了，大家有什么想法呢，欢迎在评论区告诉小编一起讨论哦！', group)
                end
                

            end
        )


    end



Event.onFinish = 
    function ()
        print("脚本被卸载！")
    end



--[[
    消息构造方式：使用Msg() 或 Msg("内容") 或 字符串 "纯文本消息"

    消息拼接方式：使用appendXXX 或 + 或 .. 进行拼接
        如 Msg("hello"):appendText("world") + "lua" .. Msg():appendImage("http://xxxxx",sender)

    消息处理：支持使用lua的所有标准字符串处理函数
        如：msg:find("pattern") --寻找文本
            或 string.find(msg,"pattern")

]]
