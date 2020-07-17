Info={}
Info.name="壁纸"
Info.author="来自wyl对ooooonly改编的脚本"
Info.version="1.0"
Info.description="一个获取高清壁纸脚本"

Event.onLoad = function(bot)
    bot:subscribeGroupMsg(function(bot, msg, group, sender)
        if msg:find("来点壁纸") then
                    local bz = ("https://api.ixiaowai.cn/gqapi/gqapi.php")
                    group:sendMsg(Msg():appendImage(bz, group) )
                end
    end)
end
