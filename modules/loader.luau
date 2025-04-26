local ms = {};
local LocalPlayer = game:GetService('Players').LocalPlayer;

function ms.new(config)
	config = config or {};
	config.OnSignIn = config.OnSignIn or function() end;
	config.OnGetKey = config.OnGetKey or function() end;

	local UILoader = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local LoaderImage = Instance.new("ImageLabel")
	local UIGradient = Instance.new("UIGradient")
	local Frame_2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local UserProfile = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Usr_DisplayName = Instance.new("TextLabel")
	local Usr_Username = Instance.new("TextLabel")
	local Frame_3 = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local TextBox = Instance.new("TextBox")
	local SignInButton = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local GetLicenseButton = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")

	UILoader.Name = "UILoader"
	UILoader.Parent = (gethui and gethui()) or game:FindFirstChild('CoreGui') or LocalPlayer:WaitForChild("PlayerGui")
	UILoader.ResetOnSpawn = false
	UILoader.IgnoreGuiInset = true;
	UILoader.ZIndexBehavior = Enum.ZIndexBehavior.Global;

	Frame.Parent = UILoader
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Frame.BackgroundTransparency = 0.050
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0.5, 0, 0.544879913, 0)
	Frame.Size = UDim2.new(0, 450, 0, 371)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Rotation = 0.010
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	LoaderImage.Name = "LoaderImage"
	LoaderImage.Parent = Frame
	LoaderImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoaderImage.BackgroundTransparency = 1.000
	LoaderImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoaderImage.BorderSizePixel = 0
	LoaderImage.Position = UDim2.new(0, 0, 0, -35)
	LoaderImage.Size = UDim2.new(1, 0, 0, 255)
	LoaderImage.ZIndex = 3
	LoaderImage.Image = "http://www.roblox.com/asset/?id=107775460625216"
	LoaderImage.ScaleType = Enum.ScaleType.Crop

	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.12, 0.21), NumberSequenceKeypoint.new(0.21, 0.00), NumberSequenceKeypoint.new(0.81, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = LoaderImage

	Frame_2.Parent = LoaderImage
	Frame_2.AnchorPoint = Vector2.new(0.5, 0)
	Frame_2.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.5, 0, 1, 0)
	Frame_2.Size = UDim2.new(1, 0, 0, 1)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = LoaderImage

	UIStroke.Color = Color3.fromRGB(57, 57, 57)
	UIStroke.Parent = Frame

	UserProfile.Name = "UserProfile"
	UserProfile.Parent = Frame
	UserProfile.AnchorPoint = Vector2.new(0, 1)
	UserProfile.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
	UserProfile.BackgroundTransparency = 0.900
	UserProfile.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserProfile.BorderSizePixel = 0
	UserProfile.Position = UDim2.new(0, 65, 1, -85)
	UserProfile.Size = UDim2.new(0, 45, 0, 45)
	UserProfile.ZIndex = 4
	UserProfile.Image = game:GetService('Players'):GetUserThumbnailAsync(LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150);

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = UserProfile

	UIStroke_2.Transparency = 0.730
	UIStroke_2.Color = Color3.fromRGB(57, 57, 57)
	UIStroke_2.Parent = UserProfile

	Usr_DisplayName.Name = "Usr_DisplayName"
	Usr_DisplayName.Parent = Frame
	Usr_DisplayName.AnchorPoint = Vector2.new(0, 1)
	Usr_DisplayName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Usr_DisplayName.BackgroundTransparency = 1.000
	Usr_DisplayName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Usr_DisplayName.BorderSizePixel = 0
	Usr_DisplayName.Position = UDim2.new(0, 119, 1, -109)
	Usr_DisplayName.Size = UDim2.new(0, 200, 0, 20)
	Usr_DisplayName.ZIndex = 4
	Usr_DisplayName.Font = Enum.Font.GothamBold
	Usr_DisplayName.Text = LocalPlayer.DisplayName
	Usr_DisplayName.TextColor3 = Color3.fromRGB(255, 255, 255)
	Usr_DisplayName.TextSize = 16.000
	Usr_DisplayName.TextXAlignment = Enum.TextXAlignment.Left

	Usr_Username.Name = "Usr_Username"
	Usr_Username.Parent = Frame
	Usr_Username.AnchorPoint = Vector2.new(0, 1)
	Usr_Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Usr_Username.BackgroundTransparency = 1.000
	Usr_Username.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Usr_Username.BorderSizePixel = 0
	Usr_Username.Position = UDim2.new(0, 119, 1, -95)
	Usr_Username.Size = UDim2.new(0, 200, 0, 15)
	Usr_Username.ZIndex = 4
	Usr_Username.Font = Enum.Font.GothamBold
	Usr_Username.Text = "@"..LocalPlayer.Name
	Usr_Username.TextColor3 = Color3.fromRGB(255, 255, 255)
	Usr_Username.TextSize = 11.000
	Usr_Username.TextTransparency = 0.250
	Usr_Username.TextXAlignment = Enum.TextXAlignment.Left

	Frame_3.Parent = Frame
	Frame_3.AnchorPoint = Vector2.new(0.5, 0)
	Frame_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Frame_3.BackgroundTransparency = 0.100
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.5, 0, 0.791999996, 0)
	Frame_3.Size = UDim2.new(0, 315, 0, 27)

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = Frame_3

	TextBox.Parent = Frame_3
	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.ClipsDescendants = true
	TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextBox.Size = UDim2.new(1, -10, 1, -5)
	TextBox.ZIndex = 6
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.GothamMedium
	TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	TextBox.PlaceholderText = "License Key"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 13.000
	TextBox.TextTransparency = 0.200
	TextBox.TextXAlignment = Enum.TextXAlignment.Left

	SignInButton.Name = "SignInButton"
	SignInButton.Parent = Frame
	SignInButton.AnchorPoint = Vector2.new(0.5, 0)
	SignInButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
	SignInButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SignInButton.BorderSizePixel = 0
	SignInButton.Position = UDim2.new(0.5, -79, 0.875, 0)
	SignInButton.Size = UDim2.new(0, 155, 0, 30)
	SignInButton.ZIndex = 8
	SignInButton.Font = Enum.Font.GothamBold
	SignInButton.Text = "Sign in"
	SignInButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	SignInButton.TextSize = 14.000

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = SignInButton

	GetLicenseButton.Name = "GetLicenseButton"
	GetLicenseButton.Parent = Frame
	GetLicenseButton.AnchorPoint = Vector2.new(0.5, 0)
	GetLicenseButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	GetLicenseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetLicenseButton.BorderSizePixel = 0
	GetLicenseButton.Position = UDim2.new(0.5, 79, 0.875, 0)
	GetLicenseButton.Size = UDim2.new(0, 155, 0, 30)
	GetLicenseButton.ZIndex = 8
	GetLicenseButton.Font = Enum.Font.GothamBold
	GetLicenseButton.Text = "Get Key"
	GetLicenseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetLicenseButton.TextSize = 14.000

	UICorner_6.CornerRadius = UDim.new(0, 5)
	UICorner_6.Parent = GetLicenseButton

	local callb = {};

	SignInButton.MouseButton1Click:Connect(function()
		config.OnSignIn(TextBox.Text , callb);
	end);

	GetLicenseButton.MouseButton1Click:Connect(function()
		config.OnGetKey(callb);
	end);
	
	function callb:SetKey(a)
		TextBox.Text = a;
	end;

	function callb:Delete()
		UILoader:Destroy();
	end;

	return callb;
end;

return ms;
