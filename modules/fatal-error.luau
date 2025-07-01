local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIListLayout = Instance.new("UIListLayout")
local sapce = Instance.new("Frame")

ScreenGui.Parent = game:FindFirstChild('CoreGui') or game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 550, 0, 550)

DropShadow.Name = "DropShadow"
DropShadow.Parent = Frame
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0, 15)
TextLabel.Size = UDim2.new(0, 200, 0, 25)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Problem / Solution"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0, 45)
TextLabel_2.Size = UDim2.new(0, 200, 0, 25)
TextLabel_2.ZIndex = 3
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "Your executor does not support this script. get the supported executor below"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 13.000
TextLabel_2.TextTransparency = 0.500

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = Frame
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1.000
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0, 15, 1, -25)
TextLabel1.Size = UDim2.new(0, 200, 0, 15)
TextLabel1.ZIndex = 3
TextLabel1.Font = Enum.Font.GothamBold
TextLabel1.Text = "Powered by WhatExpsAre.Online"
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextSize = 12.000
TextLabel1.TextTransparency = 0.500
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(4, 4, 4)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.5, 0, 0, 75)
ScrollingFrame.Size = UDim2.new(1, -25, 1, -125)
ScrollingFrame.ZIndex = 3
ScrollingFrame.ScrollBarThickness = 0

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = ScrollingFrame

UIStroke.Thickness = 3.700
UIStroke.Transparency = 0.760
UIStroke.Parent = ScrollingFrame

UIListLayout.Parent = ScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)
UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
	ScrollingFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout.AbsoluteContentSize.Y)
end);

sapce.Name = "sapce"
sapce.Parent = ScrollingFrame
sapce.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sapce.BackgroundTransparency = 1.000
sapce.BorderColor3 = Color3.fromRGB(0, 0, 0)
sapce.BorderSizePixel = 0
sapce.Size = UDim2.new(0, 0, 0, -5)

local responseAPI = game:HttpGet("https://whatexpsare.online/api/status/exploits");


local APIConsta = game:GetService('HttpService'):JSONDecode(responseAPI);

for i,v in next , APIConsta do
	if v.platform and v.platform == "Windows" then
		if v.uncPercentage and v.uncPercentage > 85 and v.extype ~= "Hidden" and v.updateStatus then
			local Frame = Instance.new("Frame")
			local DropShadow1 = Instance.new("ImageLabel")
			local UICorner = Instance.new("UICorner")
			local ExecName = Instance.new("TextLabel")
			local Frame_2 = Instance.new("Frame")
			local UICorner1 = Instance.new("UICorner")
			local ExecUpdate = Instance.new("TextLabel")
			local ExecUNC = Instance.new("TextLabel")
			local WebButton = Instance.new("TextButton")
			local UICorner1_2 = Instance.new("UICorner")
			local DiscordButton = Instance.new("TextButton")
			local UICorner1_3 = Instance.new("UICorner")
			local ExecCost = Instance.new("TextLabel")

			Frame.Parent = ScrollingFrame
			Frame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
			Frame.BackgroundTransparency = 0.100
			Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame.BorderSizePixel = 0
			Frame.ClipsDescendants = true
			Frame.Size = UDim2.new(1, -10, 0, 100)
			Frame.ZIndex = 5

			DropShadow1.Name = "DropShadow1"
			DropShadow1.Parent = Frame
			DropShadow1.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow1.BackgroundTransparency = 1.000
			DropShadow1.BorderSizePixel = 0
			DropShadow1.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow1.Size = UDim2.new(1, 47, 1, 47)
			DropShadow1.ZIndex = 4
			DropShadow1.Image = "rbxassetid://6014261993"
			DropShadow1.ImageColor3 = Color3.fromRGB(27, 54, 57)
			DropShadow1.ImageTransparency = 0.500
			DropShadow1.ScaleType = Enum.ScaleType.Slice
			DropShadow1.SliceCenter = Rect.new(49, 49, 450, 450)

			UICorner.Parent = Frame

			ExecName.Name = "ExecName"
			ExecName.Parent = Frame
			ExecName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ExecName.BackgroundTransparency = 1.000
			ExecName.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ExecName.BorderSizePixel = 0
			ExecName.Position = UDim2.new(0, 25, 0, 5)
			ExecName.Size = UDim2.new(0, 250, 0, 35)
			ExecName.ZIndex = 6
			ExecName.Font = Enum.Font.GothamBold
			ExecName.Text = v.title
			ExecName.TextColor3 = Color3.fromRGB(255, 255, 255)
			ExecName.TextSize = 24.000
			ExecName.TextXAlignment = Enum.TextXAlignment.Left

			Frame_2.Parent = Frame
			Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 157)
			Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame_2.BorderSizePixel = 0
			Frame_2.Size = UDim2.new(0, 10, 1, 0)
			Frame_2.ZIndex = 6

			UICorner1.Name = "UICorner1"
			UICorner1.Parent = Frame_2

			ExecUpdate.Name = "ExecUpdate"
			ExecUpdate.Parent = Frame
			ExecUpdate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ExecUpdate.BackgroundTransparency = 1.000
			ExecUpdate.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ExecUpdate.BorderSizePixel = 0
			ExecUpdate.Position = UDim2.new(0, 25, 0, 60)
			ExecUpdate.Size = UDim2.new(0, 250, 0, 25)
			ExecUpdate.ZIndex = 6
			ExecUpdate.Font = Enum.Font.GothamBold
			ExecUpdate.Text = "Last Update: "..v.updatedDate
			ExecUpdate.TextColor3 = Color3.fromRGB(255, 255, 255)
			ExecUpdate.TextSize = 15.000
			ExecUpdate.TextTransparency = 0.500
			ExecUpdate.TextXAlignment = Enum.TextXAlignment.Left

			ExecUNC.Name = "ExecUNC"
			ExecUNC.Parent = Frame
			ExecUNC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ExecUNC.BackgroundTransparency = 1.000
			ExecUNC.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ExecUNC.BorderSizePixel = 0
			ExecUNC.Position = UDim2.new(0, 25, 0, 40)
			ExecUNC.Size = UDim2.new(0, 250, 0, 25)
			ExecUNC.ZIndex = 6
			ExecUNC.Font = Enum.Font.GothamBold
			ExecUNC.Text = "UNC: "..tostring(v.uncPercentage)..'%'
			ExecUNC.TextColor3 = Color3.fromRGB(255, 255, 255)
			ExecUNC.TextSize = 13.000
			ExecUNC.TextTransparency = 0.500
			ExecUNC.TextXAlignment = Enum.TextXAlignment.Left

			WebButton.Name = "WebButton"
			WebButton.Parent = Frame
			WebButton.AnchorPoint = Vector2.new(1, 1)
			WebButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
			WebButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			WebButton.BorderSizePixel = 0
			WebButton.Position = UDim2.new(1, -10, 1, -10)
			WebButton.Size = UDim2.new(0, 100, 0, 25)
			WebButton.ZIndex = 8
			WebButton.Font = Enum.Font.GothamBold
			WebButton.Text = "WEBSITE"
			WebButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			WebButton.TextSize = 14.000

			UICorner1_2.Name = "UICorner1"
			UICorner1_2.Parent = WebButton

			DiscordButton.Name = "DiscordButton"
			DiscordButton.Parent = Frame
			DiscordButton.AnchorPoint = Vector2.new(1, 1)
			DiscordButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
			DiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DiscordButton.BorderSizePixel = 0
			DiscordButton.Position = UDim2.new(1, -10, 1, -40)
			DiscordButton.Size = UDim2.new(0, 100, 0, 25)
			DiscordButton.ZIndex = 8
			DiscordButton.Font = Enum.Font.GothamBold
			DiscordButton.Text = "DISCORD"
			DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			DiscordButton.TextSize = 14.000

			UICorner1_3.Name = "UICorner1"
			UICorner1_3.Parent = DiscordButton

			ExecCost.Name = "ExecCost"
			ExecCost.Parent = Frame
			ExecCost.AnchorPoint = Vector2.new(1, 0)
			ExecCost.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ExecCost.BackgroundTransparency = 1.000
			ExecCost.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ExecCost.BorderSizePixel = 0
			ExecCost.Position = UDim2.new(1, -15, 0, 1)
			ExecCost.Size = UDim2.new(1, -250, 0, 35)
			ExecCost.ZIndex = 6
			ExecCost.Font = Enum.Font.GothamBold
			ExecCost.Text = (v.free and "FREE") or v.cost or "PAID"
			ExecCost.TextColor3 = Color3.fromRGB(255, 255, 255)
			ExecCost.TextSize = 18.000
			ExecCost.TextTransparency = 0.200
			ExecCost.TextXAlignment = Enum.TextXAlignment.Right
			
			if not v.free then
				Frame_2.BackgroundColor3 = Color3.fromRGB(5, 197, 255)
			else
				Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 157)
			end;
			
			DiscordButton.MouseButton1Click:Connect(function()
				(setclipboard or toclipboard or print)(v.discordlink or "No discord link")
			end)
			
			WebButton.MouseButton1Click:Connect(function()
				(setclipboard or toclipboard or print)(v.websitelink or "No website link")
			end)
		end;
	end;
end;
