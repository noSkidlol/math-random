local Name = getgenv().SaveName or _G.SaveName
local Description = {}
if makefolder then
    makefolder("Portal Hub")
end

local Settings;
if not pcall(function() readfile("Portal Hub//" .. Name) end) then
    writefile("Portal Hub//" .. Name, game:GetService("HttpService"):JSONEncode(Description))
end

Settings = game:GetService("HttpService"):JSONDecode(readfile("Portal Hub//" .. Name))

local function KFJXOAA()
    writefile("Portal Hub//" .. Name, game:GetService("HttpService"):JSONEncode(Settings))
end

