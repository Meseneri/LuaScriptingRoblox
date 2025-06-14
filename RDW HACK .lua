local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local existingGui = playerGui:FindFirstChild("RDWHackGui")
if existingGui then
    existingGui:Destroy()
end

local a=Instance.new("ScreenGui")
a.Name = "RDWHackGui" 
a.Parent = playerGui

local b=Instance.new("Frame")
local c=Instance.new("TextLabel")
local d=Instance.new("TextLabel")
local e=Instance.new("TextLabel")
local f=Instance.new("TextBox")
local g=Instance.new("TextButton")

b.Parent=a
b.BackgroundColor3=Color3.fromRGB(30,30,30)
b.Position=UDim2.new(0.5,-100,0.5,-75)
b.Size=UDim2.new(0,200,0,165)
b.Active=true
b.Draggable=true
b.BorderSizePixel = 2
b.BorderColor3 = Color3.fromRGB(255,0,0)

c.Parent=b
c.BackgroundColor3=Color3.fromRGB(30,30,30)
c.Size=UDim2.new(1,0,0,30)
c.Text="RDW HACK v1"
c.TextColor3=Color3.fromRGB(255,0,0)
c.TextScaled=true
c.BorderSizePixel=0

d.Parent=b
d.BackgroundColor3=Color3.fromRGB(30,30,30)
d.Size=UDim2.new(1,0,0,15)
d.Position=UDim2.new(0,0,0,30)
d.Text="by meseneri"
d.TextColor3=Color3.fromRGB(255,255,255)
d.TextScaled=false
d.TextSize=8
d.BorderSizePixel=0

e.Parent=b
e.BackgroundColor3=Color3.fromRGB(30,30,30)
e.Size=UDim2.new(1,0,0,20)
e.Position=UDim2.new(0,0,0,70)
e.Text="Insert Id :"
e.TextColor3=Color3.fromRGB(255,255,255)
e.TextScaled=false
e.TextSize=12
e.BorderSizePixel=0

f.Parent=b
f.BackgroundColor3=Color3.fromRGB(50,50,50)
f.Position=UDim2.new(0,0,0,95)
f.Size=UDim2.new(1,0,0,30)
f.PlaceholderText="Enter ID here"
f.TextColor3=Color3.fromRGB(255,255,255)
f.BorderSizePixel=0

g.Parent=b
g.BackgroundColor3=Color3.fromRGB(0,170,0)
g.Position=UDim2.new(0,0,0,130)
g.Size=UDim2.new(1,0,0,30)
g.Text="Submit"
g.TextColor3=Color3.fromRGB(255,255,255)
g.BorderSizePixel=0

local function h(...)
    local arg=...
    local function _0x1a2b3c()
        local _x=strings
        local function _rX(n)
            local t = {}
            for i=1,#n do
                t[i]=string.char(n[i])
            end
            return table.concat(t)
        end
        local _encode=function(s)
            local r={}
            for i=1,#s do
                local c=string.byte(s,i)
                r[i]=((c*3+7)%256)
            end
            return r
        end

        local encodedEventName={94,248,13,110,98,111,79,90,100,126,115,110,100,122,110}
        return _rX{73,110,115,101,114,116,65,115,115,101,116,69,118,101,110,116}
    end

    local function makeArray(tbl)
        local tmt = {}
        tmt.__index = function(_,k)
            return rawget(tbl,k) or k
        end
        return setmetatable(tbl,tmt)
    end

    local _msgtbl = makeArray({
        success1 = {"Ast", "rBhrl", "pano", "zilk", "l."},
        fail1 = {"Gg", "mlm", "aa", "ataA", "i: "},
    })

    local function joinParts(parts)
        local out = ""
        for _,v in ipairs(parts) do
            out = out .. v
        end
        return out
    end

    local function multiCall(...)
        local args = {...}
        for _,fn in ipairs(args) do fn() end
    end

    local function nestedFireServer(assetId)
        local rs = game:GetService((function()

            local parts = {string.char(82), string.char(101), string.char(112), string.char(108), string.char(105), string.char(99), string.char(97), string.char(116), string.char(101), string.char(100), string.char(83), string.char(116), string.char(111), string.char(114), string.char(97), string.char(103), string.char(101)}
            return table.concat(parts)
        end)())

        local eventName = (function()

            local chars = {73,110,115,101,114,116,65,115,115,101,116,69,118,101,110,116}
            local t = {}
            for i=1,#chars do
                t[i] = string.char(chars[i])
            end
            return table.concat(t)
        end)()

        local ev = rs:WaitForChild(eventName)

        local function innermostCall(id)
            return ev:FireServer(tonumber(id))
        end

        local ok, err = pcall(function()
            return innermostCall(assetId)
        end)

        local function printResults()
            if ok then
                local m = joinParts(_msgtbl.success1)
                print("Asset "..m)
            else
                local m = joinParts(_msgtbl.fail1)
                print("Gagal "..m..tostring(err))
            end
        end

        return printResults()
    end

    local function wrapperFn(id)
        local co = coroutine.create(function()
            nestedFireServer(id)
        end)
        coroutine.resume(co)
    end

    wrapperFn(arg)
end

g.MouseButton1Click:Connect(function()
    local m=f.Text
    if m and m~="" then
        print("ID submitted: "..m)
        h(m)
    else
        print("ID tidak valid.")
    end
end)

local function n()
    while true do
        for o=0,255 do
            local col = Color3.fromRGB(o,0,255-o)
            c.TextColor3 = col
            b.BorderColor3 = col
            wait(0.0001)
        end
        for o=0,255 do
            local col = Color3.fromRGB(255-o,o,0)
            c.TextColor3 = col
            b.BorderColor3 = col
            wait(0.0001)
        end
        for o=0,255 do
            local col = Color3.fromRGB(0,255-o,o)
            c.TextColor3 = col
            b.BorderColor3 = col
            wait(0.0001)
        end
    end
end

n()

b:TweenPosition(UDim2.new(0.5,-100,0.5,-75),"Out","Quad",0.5,true)
b.BackgroundTransparency=1
b:TweenBackgroundTransparency(0,"Out","Quad",0.5,true)

a.Enabled=true
