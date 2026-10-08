-- Mario Hub | Rivals | FlowAuth bridge
local URL="https://raw.githubusercontent.com/ZevUI/Scripts/refs/heads/main/Mario_Hub_Rivals_MarioUI_Updated_TabsFixed.lua"
local ok,src=pcall(function()return game:HttpGet(URL)end)
if not ok or type(src)~="string" or #src<100 then error("Mario Hub: failed to download script",0)end
local run=loadstring or load
local fn,err=run(src,"MarioHub_Rivals")
if not fn then error("Mario Hub: "..tostring(err),0)end
return fn()
