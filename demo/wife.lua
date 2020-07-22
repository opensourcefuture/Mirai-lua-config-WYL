Event.onLoad = function(bot)

    print("载入 wife" .. bot:getId() .. "成功")

    -- 群消息监听
    bot:subscribeGroupMsg(function(bot, msg, group, sender)
        if msg:find("老婆") and sender.id == 1770747317 then
            group:sendMsg(Msg():setQuote(msg)+
                              net.get("https://chp.shadiao.app/api.php"))
        end
    end)
end