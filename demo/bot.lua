--获得bot对象
--local bot = Bot(QQ账号,"*******","D:\\Users\\Administrator-PC\\Desktop\\mirai\\device.json")

--登录bot
--bot:login()
Event.onLoad = 
    function (bot)

        print("载入bot"..bot:getId().."成功")

bot:subscribeFriendMsg(
    function(bot, msg, sender)
        local Bot = sender.id == 320279493 or sender.id == 1456804473 or sender.id == 2227300166 or sender.id == 3416885985 or sender.id == 3501560157
            
        local Administrator = sender.id == 1184861155 or sender.id == 1462549775 or sender.id == 936770555 or sender.id == 504186996 or sender.id == 1770747317 or sender.id == 3501560157 or sender.id == 320279493 or sender.id == 2227300166 or sender.id == 1456804473 or sender.id == 2052185644 or sender.id == 1109242643 or sender.id == 2941383730 or sender.id == 2656617726
        
        local Master = sender.id == 1770747317

        if msg == ("验证主人") then
            if Master == true then
                sender:sendMsg("你是狐狸狸の主人啦~")
            else
                sender:sendMsg("你不是狐狸狸の主人呢")
            end
        end

        if msg:find("hso") or msg:find("色图") or msg:find("不够色") then
            group:sendImg(Http.getRedirectUrl("https://api.r10086.com/%E5%8A%A8%E6%BC%AB%E7%BB%BC%E5%90%881.php","https://img.r10086.com/"))
        end

        if msg == ("验证管理员") then
            if Administrator == true then
                sender:sendMsg("你是狐狸狸の监护人啦~")
            else
                sender:sendMsg("你不是狐狸狸の监护人呢")
            end
        end

        if msg == ("验证身份") or msg == ("Verify identity") or msg == ("verify identity") then
            if Master == true then
                sender:sendMsg("你是狐狸狸の主人啦~")
            else
                if Administrator == true then
                    sender:sendMsg("你是狐狸狸の监护人啦~")
                else
                    sender:sendMsg("你是谁呢?狐狸狸好像不认识你哦!")
                end 
            end
        end

        if msg:find("夸我") then
            sender:sendMsg( Msg():setQuote(msg) ..  net.get("https://chp.shadiao.app/api.php"))
        end

        if msg:find("获取头像") and Administrator == true then
            local Avatar = ("https://q.qlogo.cn/g?b=qq&nk=" .. msg:gsub("获取头像", "") .. "&s=640")
            sender:sendMsg(Avatar)
        end
        
        if msg:find("动漫导航") then
            sender:sendMsg("嘀哩嘀哩 http://m.dilidili3.com\n\nAcfun http://m.acfun.cn\n\n哔哩哔哩 www.bilibili.comhttp://m.acfun.cn\n\n咕叽咕叽 https://dm.aimuc.cn/wap") 
        end

        if msg:find("骂我") then
            if Administrator == true then
                sender:sendMsg( Msg():setQuote(msg) ..  net.get("https://nmsl.shadiao.app/api.php?level=min&lang=zh_cn"))
            else
                sender:sendMsg( Msg():setQuote(msg) ..  "狐狸狸不能随便骂人呢。")
            end
            
        end
        
        if msg:find("老婆") then
            if Administrator == true or msg:find("老婆‮‭") then
                group:sendMsg( Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
            elseif msg:find("老婆!") or msg:find("老婆！")  then
                group:sendMsg( Msg():setQuote(msg)+ "你是个好人，但是......")
                return true --事件被拦截，此脚本以后的所有脚本将不会收到该事件
            end
        end
        
        if msg:find("狐狸召唤术") then
            sender:sendMsg("嗷呜，找狐狸狸有什么事？")
        end

        if msg:find("营销号生成") then
            A = string.sub(msg,string.find(msg,'f')+1,string.find(msg,'l')-1)
            B = string.sub(msg,string.find(msg,'l')+1)
            sender:sendMsg(''..A..''..B..'是怎么回事呢？'..A..'相信大家都很熟悉,但是,'..A..''..B..'是怎么回事呢，下面让小编带大家一起了解吧。')
            sender:sendMsg(  ''..A..''..B..'其实是因为这样,大家可能会很惊讶'..A..'怎么会'..B..'呢？但事实就是这样，小编感到很惊讶。')
            sender:sendMsg('这就是关于'..A..''..B..'的事情了，大家有什么想法呢，欢迎在评论区告诉小编一起讨论哦！', group)
        end

        

    end
)

--群消息监听

local admin = 1770747317
local group_list = { 512715608,937270371 }

bot:subscribeGroupMsg(
    function(bot, msg, group, sender)
        local Bot = sender.id == 320279493 or sender.id == 1456804473 or sender.id == 2227300166 or sender.id == 3416885985 or sender.id == 3501560157
        
        local Administrator = sender.id == 1184861155 or sender.id == 1462549775 or sender.id == 936770555 or sender.id == 504186996 or sender.id == 1770747317 or sender.id == 3501560157 or sender.id == 320279493 or sender.id == 2227300166 or sender.id == 1456804473 or sender.id == 2052185644 or sender.id == 1109242643 or sender.id == 2941383730 or sender.id == 2656617726
        
        local Master = sender.id == 1770747317

        --[[if sender.id == admin or Administrator == true and msg:find("测试") then

            local az = "az"

            for g in ipairs(group_list) do
                group:sendMsg(az)
            end
        end]]

        --[[if msg.find("test") then

            local az = "testnmn，就这水瓶还test"

            for g in ipairs(group_list) do
                bot.getGroup(g).sendMsg(az)
            end
        end]]

        if msg:find("yxhsc") and Administrator == true then
            A = string.sub(msg,string.find(msg,'f')+1,string.find(msg,'l')-1)
            B = string.sub(msg,string.find(msg,'l')+1)
            group:sendMsg(''..A..''..B..'是怎么回事呢？'..A..'相信大家都很熟悉,但是,'..A..''..B..'是怎么回事呢，下面让小编带大家一起了解吧。')
            group:sendMsg(  ''..A..''..B..'其实是因为这样,大家可能会很惊讶'..A..'怎么会'..B..'呢？但事实就是这样，小编感到很惊讶。')
            group:sendMsg('这就是关于'..A..''..B..'的事情了，大家有什么想法呢，欢迎在评论区告诉小编一起讨论哦！', group)
        end

        if msg:find("!repea") then
            if Administrator == true then
                Repeat = string.sub(msg,string.find(msg,'t')+1)
                group:sendMsg(Repeat)
            end
        end
        --"!repeat"可以替换成别的命令
        if msg:find("夸我") then
            group:sendMsg( Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
        end

        --[[if msg:find("hitokoto")  then
            local yiyan = net.get("https://v1.hitokoto.cn/"):match('"hitokoto":"(.-)","type":"')
            local source = net.get("https://v1.hitokoto.cn/"):match(',"from":"(.-)","')
            local author = net.get("https://v1.hitokoto.cn/"):match('"from_who":"(.-)","creator"')
            group:sendMsg( Msg():setQuote(msg)+"hitokoto一言来了:"+net.get("https://v1.hitokoto.cn/")))
            group:sendMsg( Msg():setQuote(msg)+Msg("hitokoto一言来了:")+yiyan)
            group:sendMsg( Msg():setQuote(msg)+Msg("来源")+source)
            group:sendMsg( Msg():setQuote(msg)+Msg("作者")+author)
        end]]

        if msg:find("验证主人") then
            if Master == true then
                group:sendMsg("你是狐狸狸の主人啦~")
            else
                group:sendMsg("你不是狐狸狸の主人呢")
            end
        end

        if msg:find("验证管理员") then
            if Administrator == true then
                group:sendMsg("你是狐狸狸の监护人啦~")
            else
                group:sendMsg("你不是狐狸狸の监护人呢")
            end
        end

        if msg:find("验证身份") or msg:find("Verify identity") or msg:find("verify identity") then
            if Master == true then
                group:sendMsg("你是狐狸狸の主人啦~")
            else
                if Administrator == true then
                    group:sendMsg("你是狐狸狸の监护人啦~")
                else
                    group:sendMsg("你是谁呢?狐狸狸好像不认识你哦!")
                end 
            end
        end

        if msg:find("老婆") then
            if Administrator == true or msg:find("老婆‮‭") then
                group:sendMsg( Msg():setQuote(msg)+ net.get("https://chp.shadiao.app/api.php"))
            elseif msg == "老婆" or string.find("老婆!") or msg:find("老婆！") or msg:find("老婆‮‭") then
                group:sendMsg( Msg():setQuote(msg)+ "谁是你老婆，死宅恶心心!")
                return true --事件被拦截，此脚本以后的所有脚本将不会收到该事件
            end
        end

        if msg:find("骂我") then
            if Master == true then
                group:sendMsg( Msg():setQuote(msg) ..  net.get("https://nmsl.shadiao.app/api.php?level=min&lang=zh_cn"))
            else
                group:sendMsg( Msg():setQuote(msg) ..  "狐狸狸不能随便骂人呢。")
            end
            
        end

        if msg:find("我是色批,我想看X番") and Master == true then
            group:sendMsg("https://acgttt.com")
        end

        if msg:find("动漫导航列表") then
            if Administrator == true then
                --group:sendMsg("工具箱 http://www.xiaoxiaoxia.com/links.php")
                group:sendMsg("嘀哩嘀哩 http://m.dilidili3.com\n\nAcfun http://m.acfun.cn\n\n哔哩哔哩 www.bilibili.comhttp://m.acfun.cn\n\n咕叽咕叽 https://dm.aimuc.cn/wap") 
            else
                group:sendMsg( Msg():setQuote(msg)+"狐狸狸已经私发你了呢")
                sender:sendMsg("嘀哩嘀哩 http://m.dilidili3.com\n\nAcfun http://m.acfun.cn\n\n哔哩哔哩 www.bilibili.comhttp://m.acfun.cn\n\n咕叽咕叽 https://dm.aimuc.cn/wap") 
            end
        end
        
        if msg == ("英灵召唤!") then
            group:sendMsg("汝之身托吾麾下;吾之命运附汝剑上\n\n响应圣杯之召唤遵从这意志、道理者回应我!\n\n吾乃成就世间一切善行者吾乃集世间万恶之总成\n\n缠绕三大言灵之七天\n\n穿越抑制之轮出现吧天平的守护者")
            if Master == true then
                group:sendMsg("你就是我的Master吗?")
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

        if msg:find("hso") or msg:find("色图来") or msg:find("不够色") then
            local hso = net.get("https://api.lolicon.app/setu/"):match('"url":"(.-)"'):gsub("\\","")
            group:sendMsg( Msg():appendImage(hso, group) )
        end
        
        if msg:find("获取头像") and Administrator == true then
            local Avatar = ("https://q.qlogo.cn/g?b=qq&nk=" .. msg:gsub("获取头像", "") .. "&s=640")
            group:sendMsg( Image(Avatar, group) )
        end
        
        if msg:find("来点涩") then
            local hsoaz = ("http://pic.1anime.video/random.php")
            group:sendMsg( Msg():appendImage(hsoaz, group) )
        end

        if msg:find("狐狸召唤术") then
            group:sendMsg( Msg():setQuote(msg)+"嗷呜，找狐狸狸有什么事？")
        end

        if msg:find("复读") and Master == true then
            group:sendMsg(msg:setQuote(msg))
        end
        
        if msg == "虚晃一枪" then
            group:sendMsg("看不见我"):recall()
        end
            --发送消息后立即撤回
            --[[local source = sender.sendMsg("看不见我")
            source:recall()]]

        if msg:find("来点menhera") then
            local menhera = ("https://api.ixiaowai.cn/mcapi/mcapi.php")
            group:sendMsg(Image(menhera, group) )
        end

        if msg:find("来点壁纸") then
            local bz = ("https://api.ixiaowai.cn/gqapi/gqapi.php")
            group:sendMsg(Msg():appendImage(bz, group) )
        end

        if msg:find("来点二次元") then
            local erciyuan = ("https://api.ixiaowai.cn/api/api.php")
            group:sendMsg(Msg():appendImage(erciyuan, group) )
        end

        if msg:find("撤回") then --可自定义关键词
            msg:recall()
        end

        if msg:find("获取舔狗日记")  then
            group:sendMsg( Msg():setQuote(msg)+"舔狗日记:\n"+net.get("https://api.ixiaowai.cn/tgrj/index.php"))
        end
        
        if msg:find("mirai一言")  then
            group:sendMsg( Msg():setQuote(msg)+"你要的一言来了:\n"+net.get("https://api.ixiaowai.cn/ylapi/index.php"))
        end

        if msg:find("冒泡") then
            group:sendMsg( Msg():setQuote(msg) ..  Msg("戳掉~~"))
        end
        
        if msg:find("潜水") or msg:find("下潜") then
            group:sendMsg( Msg():setQuote(msg)+Msg("捞起来~~"))
        end

        if msg:find("##") then
            api_value = msg:gsub("##","")
            api_msg = net.get("http://api.qingyunke.com/api.php?key=free&appid=0&msg=" .. api_value)
            group:sendMsg(Msg():setQuote(msg)+api_msg:gsub("{\"result\":0,\"content\":\"",""):gsub("\"}",""))
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
