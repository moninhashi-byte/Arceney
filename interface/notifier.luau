local cloneref: cloneref = cloneref or function(f) return f end;
local TweenService: TweenService = cloneref(game:GetService('TweenService'));
local TextService: TextService = cloneref(game:GetService('TextService'));
local RunService: RunService = cloneref(game:GetService('RunService'));
local Players: Players = cloneref(game:GetService('Players'));
local LocalPlayer: Player = Players.LocalPlayer;
local CoreGui: PlayerGui = (gethui and gethui()) or cloneref(game:FindFirstChild('CoreGui')) or LocalPlayer.PlayerGui;

local AlwayLose = Instance.new("ScreenGui")
local Container = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

AlwayLose.Name = "??????"
AlwayLose.Parent = CoreGui
AlwayLose.ResetOnSpawn = false

Container.Name = "??????"
Container.Parent = AlwayLose
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 5, 0, 5)
Container.Size = UDim2.new(0, 5, 0, 1)

UIListLayout.Parent = Container
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

local Notification = {
	__cache = {};	
};

function Notification.new(Config)
	Config = Config or {};
	Config.Title = Config.Title or "Title";
	Config.Content = Config.Content or "";
	Config.Duration = Config.Duration or 5;
	
	local Block = Instance.new("Frame")
	local Notify = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local HeaderText = Instance.new("TextLabel")
	local BodyText = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")

	Block.Name = "Block"
	Block.Parent = Container
	Block.BackgroundColor3 = Color3.fromRGB(17, 19, 24)
	Block.BackgroundTransparency = 1.000
	Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Block.BorderSizePixel = 0
	Block.Size = UDim2.new(0, 200, 0, 0)
	Block.ClipsDescendants = true

	Notify.Name = "Notify"
	Notify.Parent = Block
	Notify.BackgroundColor3 = Color3.fromRGB(17, 19, 24)
	Notify.BackgroundTransparency = 0.100
	Notify.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notify.BorderSizePixel = 0
	Notify.Size = UDim2.new(1, 0, 1, -5)
	Notify.Position = UDim2.fromScale(-1,0)

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = Notify

	HeaderText.Name = "HeaderText"
	HeaderText.Parent = Notify
	HeaderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HeaderText.BackgroundTransparency = 1.000
	HeaderText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HeaderText.BorderSizePixel = 0
	HeaderText.Position = UDim2.new(0, 5, 0, 5)
	HeaderText.Size = UDim2.new(1, -10, 0, 15)
	HeaderText.Font = Enum.Font.GothamBold
	HeaderText.Text = Config.Title
	HeaderText.TextColor3 = Color3.fromRGB(255, 255, 255)
	HeaderText.TextSize = 14.000
	HeaderText.TextXAlignment = Enum.TextXAlignment.Left

	BodyText.Name = "BodyText"
	BodyText.Parent = Notify
	BodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BodyText.BackgroundTransparency = 1.000
	BodyText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BodyText.BorderSizePixel = 0
	BodyText.Position = UDim2.new(0, 5, 0, 20)
	BodyText.Size = UDim2.new(1, -10, 1, -25)
	BodyText.Font = Enum.Font.GothamBold
	BodyText.Text = Config.Content
	BodyText.TextColor3 = Color3.fromRGB(255, 255, 255)
	BodyText.TextSize = 12.000
	BodyText.TextTransparency = 0.500
	BodyText.TextXAlignment = Enum.TextXAlignment.Left
	BodyText.TextYAlignment = Enum.TextYAlignment.Top

	Line.Name = "Line"
	Line.Parent = Notify
	Line.AnchorPoint = Vector2.new(0, 1)
	Line.BackgroundColor3 = Color3.fromRGB(17, 238, 253)
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, 0)
	Line.Size = UDim2.new(0, 0, 0, 2)

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = Line
	
	local Update = function()
		local Scale1 = TextService:GetTextSize(HeaderText.Text,HeaderText.TextSize,HeaderText.Font,Vector2.new(math.huge,math.huge));
		local Scale2 = TextService:GetTextSize(BodyText.Text,BodyText.TextSize,BodyText.Font,Vector2.new(math.huge,math.huge));
		
		local MainX = ((Scale1.X > Scale2.X) and Scale1.X) or Scale2.X;
		
		Block.Size = UDim2.new(0, MainX + 25, 0 ,0);

		TweenService:Create(Block,TweenInfo.new(0.2),{
			Size = UDim2.new(0, MainX + 25, 0, Scale2.Y + 35);
		}):Play();
	end;
	
	Update();
	
	TweenService:Create(Notify,TweenInfo.new(0.2),{
		Position = UDim2.fromScale(0,0)
	}):Play();
	
	TweenService:Create(Line,TweenInfo.new(Config.Duration),{
		Size = UDim2.new(1, 0, 0, 2)
	}):Play();
	
	task.delay(Config.Duration + 0.4,function()
		TweenService:Create(Notify,TweenInfo.new(0.2),{
			Position = UDim2.fromScale(-1,0)
		}):Play();
		task.wait(0.4)
		TweenService:Create(Block,TweenInfo.new(0.2),{
			Size = UDim2.new(0, 0, 0, 0);
		}):Play();
		task.wait(0.4)
		Block:Destroy();
	end);
end;

return Notification;
