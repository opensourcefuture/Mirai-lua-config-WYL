Info={}
Info.name="menhera"
Info.author="来自wyl对ooooonly改编的脚本"
Info.version="1.0"
Info.description="一个menhera chan脚本"

Event.onLoad = function(bot)
    bot:subscribeGroupMsg(function(bot, msg, group, sender)
        if msg:find("来点menhera") then
                    local menhera = ("https://api.ixiaowai.cn/mcapi/mcapi.php")
                    group:sendMsg(Msg():appendImage(menhera, group) )
                end
    end)
end
