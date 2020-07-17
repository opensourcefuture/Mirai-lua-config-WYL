Event.onLoad = 
    function (bot)

        print("载入白上吹雪"..bot:getId().."成功了呐~~~")

        --好友消息监听
        bot:subscribeFriendMsg(
            function(bot, msg, sender)
                if msg:find("夸我") then
                    sender:sendMsg(Msg():setQuote(msg) ..  net.get("https://chp.shadiao.app/api.php"))
                end
                
                if msg:find("削狐狸起床了") and sender.id == 1770747317 then
                    sender:sendMsg("呜呜~让我再睡一会嘛~~主人~~")
                end
                
                if msg:find("削狐狸起床了") and sender.id ~= 1770747317 then
                    sender:sendMsg("才不要")
                end

                if msg:find("骂我") and sender.id == 1770747317 then
                    sender:sendMsg(Msg():setQuote(msg) ..  net.get("https://nmsl.shadiao.app/api.php?level=min&lang=zh_cn"))
                end
                
                if msg:find("削狐狸召唤术") or msg:find("召唤削狐狸")then
                    sender:sendMsg("人家才不是削狐狸呢！")
                end

            end
        )

        --群消息监听
        bot:subscribeGroupMsg(
            function(bot, msg, group, sender)
                if msg:find("夸我") then
                    group:sendMsg(Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
                end
                
                if msg:find("老婆") and sender.id == 1770747317 then
                    group:sendMsg(Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
                end

                if msg:find("骂我") and sender.id == 1770747317 then
                    group:sendMsg(Msg():setQuote(msg):appendAt(sender) .. net.get("https://nmsl.shadiao.app/api.php?level=min&lang=zh_cn"))
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
                    group:sendMsg(Msg():appendImage(hso, group) )
                end
                
                if msg:find("冒泡") then
                    group:sendMsg( Msg():setQuote(msg) ..  Msg("啊嘞？这是什么，好想戳掉~"))
                end
                
                if msg:find("潜水") or msg:find("下潜") then
                    group:sendMsg(Msg():setQuote(msg)+Msg("捞起来~~"))
                end
                
                if msg:find("削狐狸召唤术") or msg:find("召唤削狐狸")then
                    group:sendMsg("人家才不是削狐狸呢！")
                end
                
                if msg:find("削狐狸起床了") and sender.id == 1770747317 then
                    group:sendMsg(Msg():setQuote(msg)+"呜呜~让我再睡一会嘛~~主人~~")
                end
                
                if msg:find("削狐狸起床了") and sender.id ~= 1770747317 then
                    group:sendMsg(Msg():setQuote(msg)+"才不要")
                    group:sendMsg("都说了人家不是削狐狸了啦！")
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
