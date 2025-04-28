local module = {};
local TweenService = game:GetService('TweenService');

module.CoreGui = (gethui and gethui()) or game:FindFirstChild('CoreGui') or game.Players.LocalPlayer.PlayerGui;

function module:RandomString() : string
	return string.char(math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102),math.random(64,102));	
end;

function module:NewInput(frame : Frame , Callback : () -> ()) : TextButton
	local Button = Instance.new('TextButton',frame);

	Button.ZIndex = frame.ZIndex + 10;
	Button.Size = UDim2.fromScale(1,1);
	Button.BackgroundTransparency = 1;
	Button.TextTransparency = 1;

	if Callback then
		Button.MouseButton1Click:Connect(Callback);
	end;

	return Button;
end;

function module:CreateAnimation(Instance: Instance , Time: number , Style : Enum.EasingStyle , Property : {[string] : any}) : Tween
	local Tween = TweenService:Create(Instance,TweenInfo.new(Time or 1 , Style or Enum.EasingStyle.Quint),Property);

	Tween:Play();

	return Tween;
end;

function module:Auth(config)
	config = config or {};
	config.Name = config.Name or "Arceney.cc";
	config.Description = config.Description or "Key System";
	config.OnLogIn = config.OnLogIn or function() end;
	config.OnGetKey = config.OnGetKey or function() end;
	
	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Static = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local TextBox = Instance.new("TextBox")
	local Description = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local LogIn = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local TextLabel = Instance.new("TextLabel")
	local GetAccount = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local TextLabel_2 = Instance.new("TextLabel")

	ScreenGui.Parent = module.CoreGui;
	ScreenGui.ResetOnSpawn = false
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	ScreenGui.IgnoreGuiInset = true;
	
	local toggle_ui = function(value)
		if value then
			module:CreateAnimation(MainFrame,0.75,nil,{
				BackgroundTransparency = 0.100,
				Size = UDim2.new(0, 300, 0, 175),
				Position = UDim2.new(0.5, 0, 0.5, 0)
			});

			module:CreateAnimation(UICorner,0.35,nil,{
				CornerRadius = UDim.new(0,8);
			});
			
			module:CreateAnimation(DropShadow,0.45,nil,{
				ImageTransparency = 0.500
			});
			
			module:CreateAnimation(DropShadow,0.45,nil,{
				ImageTransparency = 0.500
			});
			
			module:CreateAnimation(Static,0.45,nil,{
				ImageTransparency = 0.58
			});
			
			module:CreateAnimation(Title,0.45,nil,{
				TextStrokeTransparency = 0.950,
				TextTransparency = 0,
			});
			
			module:CreateAnimation(Frame,0.45,nil,{
				BackgroundTransparency = 0.400
			});
			
			module:CreateAnimation(UIStroke,0.45,nil,{
				Transparency = 0.350
			});
			
			module:CreateAnimation(TextBox,0.45,nil,{
				TextTransparency = 0,
			});
			
			module:CreateAnimation(Description,0.45,nil,{
				TextStrokeTransparency = 0.950,
				TextTransparency = 0.430
			});
			
			module:CreateAnimation(Line,0.45,nil,{
				BackgroundTransparency = 0.500
			});
			
			module:CreateAnimation(LogIn,0.45,nil,{
				BackgroundTransparency = 0.400
			});
			
			module:CreateAnimation(TextLabel,0.45,nil,{
				TextTransparency = 0.250
			});
			
			module:CreateAnimation(GetAccount,0.45,nil,{
				BackgroundTransparency = 0.400
			});

			module:CreateAnimation(TextLabel_2,0.45,nil,{
				TextTransparency = 0.250
			});
			
			module:CreateAnimation(UIStroke_2,0.45,nil,{
				Transparency = 0.35
			});
			
			module:CreateAnimation(UIStroke_3,0.45,nil,{
				Transparency = 0.35
			});
		else
			module:CreateAnimation(MainFrame,0.35,nil,{
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 275, 0, 150),
			});
			
			module:CreateAnimation(UICorner,1.5,nil,{
				CornerRadius = UDim.new(0,10);
			});

			module:CreateAnimation(DropShadow,0.35,nil,{
				ImageTransparency = 1
			});

			module:CreateAnimation(Static,0.35,nil,{
				ImageTransparency = 1
			});

			module:CreateAnimation(Title,0.35,nil,{
				TextStrokeTransparency = 1,
				TextTransparency = 1,
			});

			module:CreateAnimation(Frame,0.35,nil,{
				BackgroundTransparency = 1
			});

			module:CreateAnimation(UIStroke,0.35,nil,{
				Transparency = 1
			});

			module:CreateAnimation(TextBox,0.35,nil,{
				TextTransparency = 1,
			});

			module:CreateAnimation(Description,0.35,nil,{
				TextStrokeTransparency = 1,
				TextTransparency = 1
			});

			module:CreateAnimation(Line,0.35,nil,{
				BackgroundTransparency = 1
			});

			module:CreateAnimation(LogIn,0.35,nil,{
				BackgroundTransparency = 1
			});

			module:CreateAnimation(TextLabel,0.35,nil,{
				TextTransparency = 1
			});

			module:CreateAnimation(GetAccount,0.35,nil,{
				BackgroundTransparency = 1
			});

			module:CreateAnimation(TextLabel_2,0.35,nil,{
				TextTransparency = 1
			});

			module:CreateAnimation(UIStroke_2,0.35,nil,{
				Transparency = 1
			});

			module:CreateAnimation(UIStroke_3,0.35,nil,{
				Transparency = 1
			});
		end;
	end;
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScreenGui
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	MainFrame.BackgroundTransparency = 1
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 15)
	MainFrame.Size = UDim2.new(0, 275, 0, 150)
	
	UICorner.CornerRadius = UDim.new(1,0);
	UICorner.Parent = MainFrame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = MainFrame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = -1
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 1
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Static.Name = "Static"
	Static.Parent = MainFrame
	Static.AnchorPoint = Vector2.new(0.5, 0.5)
	Static.BackgroundTransparency = 1.000
	Static.BorderSizePixel = 0
	Static.Position = UDim2.new(0.5, 0, 0.5, 0)
	Static.Size = UDim2.new(1, 0, 1, 0)
	Static.ZIndex = -1
	Static.Image = "rbxassetid://128429862929452"
	Static.ImageTransparency = 1
	Static.SliceCenter = Rect.new(49, 49, 450, 450)

	UICorner_2.Parent = Static

	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.AnchorPoint = Vector2.new(0.5, 0)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.5, 0, 0, 10)
	Title.Size = UDim2.new(1, 0, 0, 25)
	Title.Font = Enum.Font.GothamBold
	Title.Text = config.Name
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 21.000
	Title.TextStrokeTransparency = 1
	Title.ZIndex = 3;
	
	Frame.Parent = MainFrame
	Frame.AnchorPoint = Vector2.new(0.5, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	Frame.BackgroundTransparency = 1
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0, 70)
	Frame.Size = UDim2.new(1, -30, 0, 30)
	Frame.ZIndex = 2;
	
	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = Frame

	UIStroke.Transparency = 1
	UIStroke.Color = Color3.fromRGB(84, 84, 84)
	UIStroke.Parent = Frame

	TextBox.Parent = Frame
	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.ClipsDescendants = true
	TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextBox.Size = UDim2.new(1, -10, 1, -10)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.GothamMedium
	TextBox.PlaceholderText = "License Key"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 14.000
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.ZIndex = 1000;
	TextBox.TextTransparency = 1
	
	Description.Name = "Description"
	Description.Parent = MainFrame
	Description.AnchorPoint = Vector2.new(0.5, 0)
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0.5, 0, 0, 40)
	Description.Size = UDim2.new(1, 0, 0, 15)
	Description.Font = Enum.Font.GothamBold
	Description.Text = config.Description
	Description.TextColor3 = Color3.fromRGB(255, 255, 255)
	Description.TextSize = 12.000
	Description.TextStrokeTransparency = 1
	Description.TextTransparency = 1
	Description.ZIndex = 3;
	
	Line.Name = "Line"
	Line.Parent = MainFrame
	Line.AnchorPoint = Vector2.new(0.5, 0)
	Line.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
	Line.BackgroundTransparency = 1
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.5, 0, 0, 60)
	Line.Size = UDim2.new(1, 0, 0, 1)
	Line.ZIndex = 3;
	
	LogIn.Name = "LogIn"
	LogIn.Parent = MainFrame
	LogIn.AnchorPoint = Vector2.new(0.5, 0)
	LogIn.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	LogIn.BackgroundTransparency = 1
	LogIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogIn.BorderSizePixel = 0
	LogIn.Position = UDim2.new(0.25, 0, 0.250999987, 70)
	LogIn.Size = UDim2.new(0.5, -30, 0, 30)
	LogIn.ZIndex = 2
	
	UICorner_4.CornerRadius = UDim.new(0, 3)
	UICorner_4.Parent = LogIn

	UIStroke_2.Transparency = 1
	UIStroke_2.Color = Color3.fromRGB(65, 65, 65)
	UIStroke_2.Parent = LogIn

	TextLabel.Parent = LogIn
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(1, -10, 1, -10)
	TextLabel.Font = Enum.Font.GothamMedium
	TextLabel.Text = "Sign In"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextTransparency = 1
	TextLabel.ZIndex = 3;
	
	GetAccount.Name = "GetAccount"
	GetAccount.Parent = MainFrame
	GetAccount.AnchorPoint = Vector2.new(0.5, 0)
	GetAccount.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	GetAccount.BackgroundTransparency = 1
	GetAccount.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetAccount.BorderSizePixel = 0
	GetAccount.Position = UDim2.new(0.75, 0, 0.250999987, 70)
	GetAccount.Size = UDim2.new(0.5, -30, 0, 30)
	GetAccount.ZIndex = 2;
	
	UICorner_5.CornerRadius = UDim.new(0, 3)
	UICorner_5.Parent = GetAccount

	UIStroke_3.Transparency = 1
	UIStroke_3.Color = Color3.fromRGB(65, 65, 65)
	UIStroke_3.Parent = GetAccount

	TextLabel_2.Parent = GetAccount
	TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_2.Size = UDim2.new(1, -10, 1, -10)
	TextLabel_2.Font = Enum.Font.GothamMedium
	TextLabel_2.Text = "Get Key"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextTransparency = 1
	TextLabel_2.ZIndex = 3
	
	toggle_ui(true);
	
	local tbl = {
		Event = Instance.new('BindableEvent')	
	};
	
	function tbl:Visible(a)
		toggle_ui(a);
	end;
	
	do
		local RateLimit = false;
		
		local LoginButton = module:NewInput(LogIn,function()
			if RateLimit then
				return RateLimit;	
			end;
			
			RateLimit = true;
			
			local Out = config.OnLogIn(TextBox.Text , tbl);
			
			if Out then
				TextBox.Text = "Connecting to server";
				task.delay(0.3,toggle_ui,false);
				task.delay(0.75,ScreenGui.Destroy,ScreenGui);
				tbl.Event:Fire();
				
				return;
			else
				TextBox.Text = "";
			end;
			
			RateLimit = false;
		end)

		LoginButton.MouseEnter:Connect(function()
			module:CreateAnimation(LogIn,0.35,nil,{
				BackgroundColor3 = Color3.fromRGB(85, 85, 85)
			});
		end);

		LoginButton.MouseLeave:Connect(function()
			module:CreateAnimation(LogIn,0.35,nil,{
				BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			});
		end);
	end;
	
	do
		local AccountButton = module:NewInput(GetAccount,function()
			config.OnGetKey(tbl);
		end)

		AccountButton.MouseEnter:Connect(function()
			module:CreateAnimation(GetAccount,0.35,nil,{
				BackgroundColor3 = Color3.fromRGB(85, 85, 85)
			});
		end);

		AccountButton.MouseLeave:Connect(function()
			module:CreateAnimation(GetAccount,0.35,nil,{
				BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			});
		end);
	end;
	
	function tbl:Await()
		tbl.Event.Event:Wait()
	end;
	
	return tbl;
end;

function module:LoadInit(config)
	config = config or {};
	config.Text = config.Text or "Arceney.cc";
	config.Size = config.Size or 65;
	config.Color = config.Color or Color3.fromRGB(255, 255, 255);
	config.Duration = config.Duration or 3;
	
	local LoadUI = Instance.new("ScreenGui")
	local KeyList = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local blur = Instance.new('BlurEffect');
	
	blur.Size = 0;
	blur.Parent = game:GetService('Lighting');
	
	LoadUI.Parent = module.CoreGui;
	LoadUI.ResetOnSpawn = false
	LoadUI.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	LoadUI.IgnoreGuiInset = true;

	KeyList.Name = "KeyList"
	KeyList.Parent = LoadUI
	KeyList.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyList.BackgroundTransparency = 1.000
	KeyList.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyList.BorderSizePixel = 0
	KeyList.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyList.Size = UDim2.new(1, 0, 0, 1)

	UIListLayout.Parent = KeyList
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 5)
	
	local center = Instance.new("Frame")

	center.Name = "center"
	center.Parent = LoadUI
	center.AnchorPoint = Vector2.new(0.5, 0.5)
	center.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	center.BackgroundTransparency = 1.000
	center.BorderColor3 = Color3.fromRGB(0, 0, 0)
	center.BorderSizePixel = 0
	center.Position = UDim2.new(0.5, 0, 0.5, 0)
	center.Size = UDim2.new(0, 1, 0, 1)
	
	local GetText = function(as)
		local Ascii = Instance.new("TextLabel")

		Ascii.Name = "Ascii"
		Ascii.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Ascii.BackgroundTransparency = 1.000
		Ascii.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Ascii.BorderSizePixel = 0
		Ascii.Size = UDim2.new(0, config.Size, 0, config.Size)
		Ascii.Font = Enum.Font.GothamBold
		Ascii.Text = as
		Ascii.TextColor3 = config.Color
		Ascii.TextSize = 100.000
		Ascii.AnchorPoint = Vector2.new(0,0)
		Ascii.TextWrapped = true
		
		return Ascii;
	end;
	
	local textCache = {};
	
	do
		local ct = 1;

		-- create the text position
		string.gsub(config.Text,'.',function(value)
			local m = GetText(value);

			m.TextTransparency = 1;
			m.Parent = KeyList;
			
			textCache[ct] = m;
			
			ct += 1;
		end)
	end;
	
	module:CreateAnimation(blur,1.75,Enum.EasingStyle.Quint,{
		Size = 55
	});
	
	task.wait(0.25)
	
	local setPosition = function(m : Frame , v : Frame , a : UDim2)
		a = a or UDim2.fromOffset(0,0);
		m.Position = UDim2.fromOffset(v.AbsolutePosition.X,v.AbsolutePosition.Y + math.abs(LoadUI.AbsolutePosition.Y)) + a;
	end;
	
	local getPosition = function(v : Frame)
		return UDim2.fromOffset(v.AbsolutePosition.X,v.AbsolutePosition.Y + math.abs(LoadUI.AbsolutePosition.Y));
	end;
	
	local getScale = function(fr : Frame)
		return UDim2.fromOffset(fr.AbsoluteSize.X / 2 , fr.AbsoluteSize.Y / 2)
	end;
	
	local asciies = {};
	
	for i = 1 , #config.Text do
		local m = GetText(config.Text:sub(i,i));
		m.TextTransparency = 1;
		
		if i == 1 then -- first text
			setPosition(m,center,UDim2.fromOffset(0,250) - getScale(m));
			m.Parent = LoadUI;
			
			module:CreateAnimation(m,1,Enum.EasingStyle.Quint,{
				Position = getPosition(center) - getScale(m),
				TextTransparency = 0,
			});
			
			task.wait(1.4)
			
			module:CreateAnimation(m,0.5,Enum.EasingStyle.Quint,{
				Position = getPosition(textCache[i]),
				TextTransparency = 0,
			});
			
			task.wait(0.65);
		else
			setPosition(m,textCache[i],UDim2.fromOffset(0,100));
			m.Parent = LoadUI;
			
			module:CreateAnimation(m,0.75,Enum.EasingStyle.Quint,{
				Position = getPosition(textCache[i]),
				TextTransparency = 0,
			});
			
			task.wait(0.075)
		end;
		
		table.insert(asciies,m)
	end;
	
	task.wait(config.Duration);
	
	for i = #asciies , 1 , -1 do
		local m = asciies[i];
		
		module:CreateAnimation(m,0.5,Enum.EasingStyle.Quint,{
			TextTransparency = 1,
		});
		
		task.wait(0.065)
	end;
	
	task.wait(0.5);
	
	module:CreateAnimation(blur,1.75,Enum.EasingStyle.Quint,{
		Size = 0
	});
	
	task.delay(1,function()
		LoadUI:Destroy();
		blur:Destroy();
	end)
end;

return module;
