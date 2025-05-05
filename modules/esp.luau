local esp = {
	_q = {};
	cfg = {
		tracker = false,
		fillColor = Color3.fromRGB(0, 98, 255),
		outlineColor = Color3.fromRGB(255, 255, 255),
	};
};

local coregui = game:FindFirstChild('CoreGui') or game:GetService('StarterGui');
local hlui = Instance.new('Folder',coregui);

hlui.Name = "hls";

function esp:draw(target : Player | Model | string)
	local main : Player = ((typeof(target) == 'Instance' and target.ClassName == "Player") and target) or (typeof(target) == 'Instance' and game:GetService('Players'):GetPlayerFromCharacter(target)) or game:GetService('Players'):FindFirstChild(target) or target;
	local Highlight = Instance.new('Highlight',hlui);
	local Trail = Instance.new('Trail');
	local at1,at2 = Instance.new('Attachment') , Instance.new('Attachment');
	
	Highlight.Name = main.Name;
	
	at1.CFrame = CFrame.new(0,0.5,0);
	at2.CFrame = CFrame.new(0, -1.089, 0);
	
	Trail.Lifetime = 3;
	Trail.MaxLength = 0;
	Trail.MinLength = 0.1;
	Trail.FaceCamera = true;
	
	Trail.Attachment0 = at1;
	Trail.Attachment1 = at2;
	
	Trail.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.fromRGB(0, 76, 255)),
		ColorSequenceKeypoint.new(0.266,Color3.fromRGB(0, 208, 255)),
		ColorSequenceKeypoint.new(0.456,Color3.fromRGB(0, 255, 149)),
		ColorSequenceKeypoint.new(0.729,Color3.fromRGB(255, 217, 0)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(255, 0, 4))
	};
	
	Trail.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0,0.212),
		NumberSequenceKeypoint.new(1,1),
	};
	
	Trail.WidthScale = NumberSequence.new{
		NumberSequenceKeypoint.new(0,1),
		NumberSequenceKeypoint.new(1,0),
	};
	
	local update = function()
		if not main.Character or not main.Character:FindFirstChild('HumanoidRootPart') or not main.Character:FindFirstChild('Humanoid') or main.Character:FindFirstChild('Humanoid').Health <= 0 then
			at1.Parent = nil;
			at2.Parent = nil;
			Trail.Parent = nil;
			
			return;
		end;
		
		local HumanoidRootPart = main.Character:FindFirstChild('HumanoidRootPart');
		
		Highlight.Adornee = main.Character;
		Highlight.FillColor = esp.cfg.fillColor;
		Highlight.OutlineColor = esp.cfg.outlineColor;
		
		if esp.cfg.tracker then
			at1.Parent = HumanoidRootPart;
			at2.Parent = HumanoidRootPart;
			Trail.Parent = HumanoidRootPart;
		else
			at1.Parent = nil;
			at2.Parent = nil;
			Trail.Parent = nil;
		end;
	end;
	
	pcall(update);
	
	local runtime = task.spawn(function()
		while true do task.wait()
			pcall(update);
		end;
	end);
	
	esp._q[main] = {
		delete = function()
			task.cancel(runtime);
			
			at1:Destroy();
			at2:Destroy();
			Highlight:Destroy();
			Trail:Destroy();
			
			esp._q[main] = nil;
		end,
		
		update = update,
		
		hl = Highlight,
		
		root = main,
	};
	
	return esp._q[main];
end;

function esp:isdrawed(target : Player | Model | string)
	local main : Player = (typeof(target) == 'Player' and target) or (typeof(target) == 'Instance' and game:GetService('Players'):GetPlayerFromCharacter(target)) or game:GetService('Players'):FindFirstChild(target);
	
	if main then
		return esp._q[main];
	end;
end;

return esp;
