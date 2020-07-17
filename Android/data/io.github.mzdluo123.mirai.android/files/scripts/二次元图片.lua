Info={}
Info.name="二次元"
Info.author="来自wyl对ooooonly改编的脚本"
Info.version="1.0"
Info.description="一个获取二次元图片脚本"

Event.onLoad = function(bot)
    bot:subscribeGroupMsg(function(bot, msg, group, sender)
        if msg:find("来点二次元") then
                    local erciyuan = ("https://api.ixiaowai.cn/api/api.php")
                    group:sendMsg(Msg():appendImage(erciyuan, group) )
                end
    end)
end
