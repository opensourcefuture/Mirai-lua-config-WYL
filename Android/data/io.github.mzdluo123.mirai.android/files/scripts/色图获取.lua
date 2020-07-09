Info={}
Info.name="Hso_Lua"
Info.author="ooooonly"
Info.version="1.0"
Info.description="一个简单的hso脚本"

Event.onLoad = function(bot)
    bot:subscribeGroupMsg(function(bot, msg, group, sender)
        if msg:find("hso") or msg:find("色图来") then
            group:sendMsg(Image(Net.get("https://api.lolicon.app/setu/"):match('"url":"(.-)"'):gsub("\\", ""), group))
        end
    end)
end
