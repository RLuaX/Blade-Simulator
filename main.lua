--[[
    Made by HellFire0x
    Script as of [8/28/2020]
]]

local ReplicatedStorage = game.ReplicatedStorage;
local Name = game.Players.LocalPlayer.Name;
local SwordSwing = game:GetService("Workspace")[Name]["Black Sword"].Handle.SwordSwing;

if ReplicatedStorage:WaitForChild("Setting"):InvokeServer("Get", "SFX") == true then
	SwordSwing:Play();
end

while wait() do
    ReplicatedStorage:WaitForChild("Swing"):FireServer(1);
end
