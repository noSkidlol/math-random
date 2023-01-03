local Lib = {}
local Name = getgenv().SaveName
local Description = {}
if makefolder then
    makefolder("Portal Hub")
end

local Settings;
if not pcall(function() readfile("Portal Hub//" .. Name) end) then
    writefile("Portal Hub//" .. Name, game:GetService("HttpService"):JSONEncode(Description))
end

Settings = game:GetService("HttpService"):JSONDecode(readfile("Portal Hub//" .. Name))
function Lib:Save()
    writefile("Portal Hub//" .. Name, game:GetService("HttpService"):JSONEncode(Settings))
end
return Lib
