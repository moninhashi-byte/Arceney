export type cloneref = (target: Instance) -> Instance;
export type gethui = () -> Instance;

local cloneref: cloneref = cloneref or function(f) return f end;
local gethui: gethui = gethui or function(f) return f end;

local Gui = (gethui and gethui()) or cloneref(game:FindFirstChild('CoreGui') or game:GetService('Players').LocalPlayer.PlayerGui);
local TweenService = game:GetService("TweenService");

local Loader = {};

function Loader.animate(instance: Instance, properties: {[string]: any}, duration: number, easingStyle: Enum.EasingStyle, easingDirection: Enum.EasingDirection, delayTime: number)
	easingStyle = easingStyle or Enum.EasingStyle.Quad;
	easingDirection = easingDirection or Enum.EasingDirection.InOut;
	duration = duration or 0.5;
	delayTime = delayTime or 0;
	
	local TweenInfo = TweenInfo.new(duration, easingStyle, easingDirection, 0, false, delayTime);
	local Tween = TweenService:Create(instance, TweenInfo, properties);
	Tween:Play();
	return Tween;
end;

function Loader.new(LoaderContent: string , TitleContent: string)
	LoaderContent = LoaderContent or "LUA SCRIPT";
	TitleContent = TitleContent or "LOADER";
	
	local Payback = {};
	local LoaderManager = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local LoaderName = Instance.new("TextLabel")
	local UIStroke = Instance.new("UIStroke")
	local InterfaceFrame = Instance.new("Frame")
	local SmoothFrame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local ObjectFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	LoaderManager.Name = "LoaderManager?t="..tostring(tick());
	LoaderManager.Parent = Gui;
	LoaderManager.IgnoreGuiInset = true;
	LoaderManager.ResetOnSpawn = false;
	LoaderManager.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	
	MainFrame.ClipsDescendants = true;
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = LoaderManager
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(14, 28, 30)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 0, 0, 37)
	
	Loader.animate(MainFrame,{
		Size = UDim2.new(0, 300, 0, 37)
	},0.5);
	
	task.delay(0.45,Loader.animate , MainFrame,{
		Size = UDim2.new(0, 300, 0, 200)
	},0.5);
	
	UICorner.Parent = MainFrame

	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.AnchorPoint = Vector2.new(1, 0)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(1, -10, 0, 10)
	Title.Size = UDim2.new(1, 0, 0, 15)
	Title.ZIndex = 15
	Title.Font = Enum.Font.GothamBold
	Title.Text = TitleContent
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextTransparency = 1
	Title.TextXAlignment = Enum.TextXAlignment.Right
	
	task.delay(0.7,Loader.animate , Title,{
		TextTransparency = 0.750
	},0.5);
	
	LoaderName.Name = "LoaderName"
	LoaderName.Parent = MainFrame
	LoaderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoaderName.BackgroundTransparency = 1.000
	LoaderName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoaderName.BorderSizePixel = 0
	LoaderName.Position = UDim2.new(0, 10, 0, 10)
	LoaderName.Size = UDim2.new(1, 0, 0, 15)
	LoaderName.ZIndex = 15
	LoaderName.Font = Enum.Font.GothamBold
	LoaderName.Text = LoaderContent
	LoaderName.TextColor3 = Color3.fromRGB(255, 255, 255)
	LoaderName.TextSize = 14.000
	LoaderName.TextTransparency = 1
	LoaderName.TextXAlignment = Enum.TextXAlignment.Left
	
	task.delay(0.3,Loader.animate , LoaderName,{
		TextTransparency = 0.100
	},0.5);
	
	UIStroke.Thickness = 3.000
	UIStroke.Transparency = 0.950
	UIStroke.Parent = MainFrame

	InterfaceFrame.Name = "InterfaceFrame"
	InterfaceFrame.Parent = MainFrame
	InterfaceFrame.AnchorPoint = Vector2.new(0.5, 0)
	InterfaceFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InterfaceFrame.BackgroundTransparency = 1.000
	InterfaceFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	InterfaceFrame.BorderSizePixel = 0
	InterfaceFrame.ClipsDescendants = true
	InterfaceFrame.Position = UDim2.new(0.5, 0, 0, 35)
	InterfaceFrame.Size = UDim2.new(1, -15, 1, -50)
	InterfaceFrame.ZIndex = 5

	SmoothFrame.Name = "SmoothFrame"
	SmoothFrame.Parent = InterfaceFrame
	SmoothFrame.BackgroundColor3 = Color3.fromRGB(14, 28, 30)
	SmoothFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SmoothFrame.BorderSizePixel = 0
	SmoothFrame.Size = UDim2.new(1, 0, 0.699999988, 0)
	SmoothFrame.ZIndex = 15

	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.47, 0.16), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient.Parent = SmoothFrame

	ObjectFrame.Name = "ObjectFrame"
	ObjectFrame.Parent = InterfaceFrame
	ObjectFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ObjectFrame.BackgroundTransparency = 1.000
	ObjectFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ObjectFrame.BorderSizePixel = 0
	ObjectFrame.Size = UDim2.new(1, 0, 1, 0)
	ObjectFrame.ZIndex = 5

	UIListLayout.Parent = ObjectFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	
	Payback.Type = {
		Error = Color3.fromRGB(255, 90, 93),
		Success = Color3.fromRGB(120, 255, 129),
		Warning = Color3.fromRGB(255, 239, 114),
		Info = Color3.fromRGB(213, 213, 213),
	};
	
	function Payback:AddLabel(Content: string , Type: string)
		local LabelFrame = Instance.new("Frame")
		local StatusFrame = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local LabelMain = Instance.new("TextLabel")
		
		LabelFrame.Name = "LabelFrame"
		LabelFrame.Parent = ObjectFrame
		LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LabelFrame.BackgroundTransparency = 1.000
		LabelFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LabelFrame.BorderSizePixel = 0
		LabelFrame.ClipsDescendants = true
		LabelFrame.Size = UDim2.new(1, 0, 0, 0)

		StatusFrame.Name = "StatusFrame"
		StatusFrame.Parent = LabelFrame
		StatusFrame.AnchorPoint = Vector2.new(0, 0.5)
		StatusFrame.BackgroundColor3 = Payback.Type[Type] or Payback.Type.Success;
		StatusFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		StatusFrame.BorderSizePixel = 0
		StatusFrame.Position = UDim2.new(0, 15, 0.5, 0)
		StatusFrame.Size = UDim2.new(0, 0, 0, 0)
	
		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = StatusFrame

		UIStroke.Thickness = 0;
		UIStroke.Transparency = 1;
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.Parent = StatusFrame

		LabelMain.Name = "LabelMain"
		LabelMain.Parent = LabelFrame
		LabelMain.AnchorPoint = Vector2.new(0, 0.5)
		LabelMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LabelMain.BackgroundTransparency = 1.000
		LabelMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LabelMain.BorderSizePixel = 0
		LabelMain.Position = UDim2.new(0, 45, 0.5, 0)
		LabelMain.Size = UDim2.new(0, 200, 0, 15)
		LabelMain.ZIndex = 6
		LabelMain.Font = Enum.Font.GothamBold
		LabelMain.Text = Content;
		LabelMain.TextColor3 = Color3.fromRGB(255, 255, 255)
		LabelMain.TextSize = 12.000
		LabelMain.TextTransparency = 1
		LabelMain.TextXAlignment = Enum.TextXAlignment.Left
		
		Loader.animate(LabelFrame,{
			Size = UDim2.new(1, 0, 0, 25)
		},0.25);
		
		Loader.animate(LabelMain,{
			TextTransparency = 0.400,
			Position = UDim2.new(0, 35, 0.5, 0)
		},0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut);
		
		Loader.animate(UIStroke,{
			Thickness = 2,
			Transparency = 0.9,
		},0.6,nil,nil,0.1);
		
		Loader.animate(StatusFrame,{
			Size = UDim2.new(0, 12, 0, 12),
			Position = UDim2.new(0, 10, 0.5, 0)
		},0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut);
		
		return {
			change_type = function(new_type: string)
				Loader.animate(StatusFrame,{
					BackgroundColor3 = Payback.Type[new_type] or Payback.Type.Success;
				},0.5);
			end,
		};
	end;
	
	function Payback:AddInput(Placeholder: string , Type: string)
		local InputFrame = Instance.new("Frame")
		local StatusFrame = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local InputBackground = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local TextBox = Instance.new("TextBox")
		local UIGradient = Instance.new("UIGradient")
		local SendButton = Instance.new("TextButton")
		local UICorner_3 = Instance.new("UICorner")

		InputFrame.Name = "InputFrame"
		InputFrame.Parent = ObjectFrame
		InputFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		InputFrame.BackgroundTransparency = 1.000
		InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		InputFrame.BorderSizePixel = 0
		InputFrame.ClipsDescendants = true
		InputFrame.Size = UDim2.new(1, 0, 0, 0)

		StatusFrame.Name = "StatusFrame"
		StatusFrame.Parent = InputFrame
		StatusFrame.AnchorPoint = Vector2.new(0, 0.5)
		StatusFrame.BackgroundColor3 = Payback.Type[Type] or Payback.Type.Success;
		StatusFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		StatusFrame.BorderSizePixel = 0
		StatusFrame.Position = UDim2.new(0, 10, 0.5, 0)
		StatusFrame.Size = UDim2.new(0, 0, 0, 0)

		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = StatusFrame

		UIStroke.Thickness = 0
		UIStroke.Transparency = 1
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.Parent = StatusFrame

		InputBackground.Name = "InputBackground"
		InputBackground.Parent = InputFrame
		InputBackground.AnchorPoint = Vector2.new(0, 0.5)
		InputBackground.BackgroundColor3 = Color3.fromRGB(10, 21, 22)
		InputBackground.BackgroundTransparency = 0.600
		InputBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
		InputBackground.BorderSizePixel = 0
		InputBackground.ClipsDescendants = true
		InputBackground.Position = UDim2.new(0, 30, 0.5, 0)
		InputBackground.Size = UDim2.new(1, -75, 0, 20)
		InputBackground.ZIndex = 5

		UICorner_2.CornerRadius = UDim.new(0, 4)
		UICorner_2.Parent = InputBackground

		TextBox.Parent = InputBackground
		TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
		TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.BackgroundTransparency = 1.000
		TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextBox.BorderSizePixel = 0
		TextBox.Position = UDim2.new(0.5, 15, 0.5, 0)
		TextBox.Size = UDim2.new(1, -10, 1, 0)
		TextBox.ZIndex = 7
		TextBox.ClearTextOnFocus = false
		TextBox.Font = Enum.Font.GothamBold
		TextBox.PlaceholderText = Placeholder
		TextBox.Text = ""
		TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.TextSize = 12.000
		TextBox.TextTransparency = 1
		TextBox.TextXAlignment = Enum.TextXAlignment.Left

		UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.01, 0.00), NumberSequenceKeypoint.new(0.99, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
		UIGradient.Parent = TextBox

		SendButton.Name = "SendButton"
		SendButton.Parent = InputFrame
		SendButton.AnchorPoint = Vector2.new(1, 0.5)
		SendButton.BackgroundColor3 = Color3.fromRGB(11, 23, 24)
		SendButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		SendButton.BorderSizePixel = 0
		SendButton.Position = UDim2.new(1, -1, 0.5, 0)
		SendButton.Size = UDim2.new(0, 40, 0, 20)
		SendButton.Font = Enum.Font.GothamBold
		SendButton.Text = "Send"
		SendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		SendButton.TextSize = 10.000
		SendButton.TextTransparency = 0.500

		UICorner_3.CornerRadius = UDim.new(0, 4)
		UICorner_3.Parent = SendButton
		
		Loader.animate(InputFrame,{
			Size = UDim2.new(1, 0, 0, 25)
		},0.25);

		Loader.animate(TextBox,{
			TextTransparency = 0.400,
			Position = UDim2.new(0.5, 0, 0.5, 0)
		},0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut);

		Loader.animate(UIStroke,{
			Thickness = 2,
			Transparency = 0.9,
		},0.6,nil,nil,0.1);

		Loader.animate(StatusFrame,{
			Size = UDim2.new(0, 12, 0, 12),
			Position = UDim2.new(0, 10, 0.5, 0)
		},0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut);
		
		SendButton.MouseButton1Click:Wait();
		
		TextBox.TextEditable = false;
		
		return TextBox.Text , {
			change_type = function(new_type: string)
				Loader.animate(StatusFrame,{
					BackgroundColor3 = Payback.Type[new_type] or Payback.Type.Success;
				},0.5);
			end,
		};
	end;
	
	function Payback:Close()
		Loader.animate(MainFrame,{
			Size = UDim2.new(0, 300, 0, 37)
		},0.5);
		
		Loader.animate(Title,{
			TextTransparency = 1
		},0.4);
		
		Loader.animate(InterfaceFrame,{
			Position = UDim2.new(0.5, 0, 1, 35)
		},0.7);
		
		Loader.animate(LoaderName,{
			TextTransparency = 1
		},0.3);
		
		task.delay(0.45,Loader.animate , MainFrame,{
			Size = UDim2.new(0, 0, 0, 37)
		},0.5);
		
		task.delay(1,function()
			LoaderManager:Destroy();
		end)
	end;
	
	return Payback;
end;

return Loader;
