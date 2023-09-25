local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Visual Discord")

local serv = win:Server("Main", "")

local btns = serv:Channel("Misc")

btns:Label("You can see the messages in the F9 Console!")

btns:Seperator()

btns:Textbox("Message", "Message here!", true, function(t)
print(t)
end)

btns:Seperator()

btns:Slider("Max Length",1, 500, 100, function(v)
print("Max Length" + v)
end)