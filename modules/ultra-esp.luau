export type Config = {
	Color : Color3,
	WallColor : Color3,
	FillTransparency : number,
	OutlineTransparency : number,
}

local NL_ESP = {
	ps = game:GetService("PhysicsService"),
	_cache = {}
};

function NL_ESP:init(model : Config)
	model = model or {};
	model.Color = model.Color or Color3.fromRGB(68, 255, 0);
	model.WallColor = model.WallColor or Color3.fromRGB(255, 0, 4);
	model.FillTransparency = model.FillTransparency or 0.5;
	model.OutlineTransparency = model.OutlineTransparency or 0.9;
	
	local export = {
		_cache = {};
		_func = {}
	};
	
	function export:draw(target : Model)
		local cacheParts = {};
		local blockPart = {};
		local sig = {};
		local indexPart = {};
		local bonecol = {};
		
		for i,v in next , target:GetDescendants() do
			if v:IsA('BasePart') or v:IsA('UnionOperation') then
				local indexOf = i;

				v:SetAttribute('indexOf',indexOf)
				
				if export._cache[v] then
					export._cache[v]:Disconnect();
				end;
				
				table.insert(blockPart,v);
				
				indexPart[indexOf] = v;
				
				export._cache[v] = v:GetPropertyChangedSignal('CFrame'):Connect(function()
					if cacheParts[indexOf] then
						cacheParts[indexOf].CFrame = v.CFrame;
					end;
				end);
			elseif v:IsA('Highlight') then
				v:Destroy();
			elseif v:IsA('Bone') then
				v:SetAttribute('indexOf',i + 100)
				bonecol[i + 100] = v;
			end;
		end;
		
		target.Archivable = true;
		
		local clone = target:Clone();
		local cloneRoot : BasePart = clone:FindFirstChild('HumanoidRootPart') or clone:FindFirstChild('RootPart') or clone.PrimaryPart;
		local targetRoot : BasePart = target:FindFirstChild('HumanoidRootPart') or target:FindFirstChild('RootPart') or target.PrimaryPart;
		local cloneAnimator : Animator = clone:FindFirstChildWhichIsA('Animator',true) or clone:FindFirstChildWhichIsA('AnimationController',true) or target:FindFirstChildWhichIsA('Humanoid');
		local targetAnimator : Animator = target:FindFirstChildWhichIsA('Animator',true) or clone:FindFirstChildWhichIsA('AnimationController',true) or target:FindFirstChildWhichIsA('Humanoid');
		local nornal , wall = Instance.new('Highlight'),Instance.new('Highlight');
		
		clone.Name = tostring(math.round(tick()))
		clone:ScaleTo(target:GetScale() - 0.1);
		
		do
			nornal.Parent = game:FindFirstChild('CoreGui') or game:GetService('Players').LocalPlayer.PlayerGui;
			nornal.FillColor = model.Color;
			nornal.FillTransparency = model.FillTransparency;
			nornal.OutlineTransparency = model.OutlineTransparency;
			nornal.DepthMode = Enum.HighlightDepthMode.Occluded;
			
			wall.Parent = game:FindFirstChild('CoreGui') or game:GetService('Players').LocalPlayer.PlayerGui;
			wall.FillColor = model.WallColor;
			wall.FillTransparency = model.FillTransparency;
			wall.OutlineTransparency = model.OutlineTransparency;
			wall.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
			
			nornal.Adornee = target;
			wall.Adornee = clone;
		end;
		
		do
			local hunanoid = clone:FindFirstChildWhichIsA('Humanoid');

			if hunanoid then
				hunanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
				hunanoid.DisplayName = "";
			end;
		end;
		
		local boneThreads = {};
		
		for i,v in next , clone:GetDescendants() do
			if v:IsA('BasePart') or v:IsA('UnionOperation') then
				v.Anchored = false;
				v.CanCollide = false;
				
				NL_ESP.ps:SetPartCollisionGroup(v,'NLAI');
				
				local indexOf = v:GetAttribute('indexOf');
				
				if indexOf then
					cacheParts[indexOf] = v;
				end;
				
				if indexPart[indexOf] then
					v.CFrame = indexPart[indexOf].CFrame;
				end;
				
				if v:IsA('MeshPart') and target:FindFirstChildWhichIsA('Bone',true) then
					v.Size = v.Size - Vector3.new(0.5,0.5,0.5);
				end;
				
			elseif v:IsA('Script') then
				v:Destroy();
			elseif v:IsA('Bone') then
				local indexId = v:GetAttribute('indexOf');
				
				table.insert(boneThreads,task.spawn(function()
					while true do task.wait()
						v.WorldCFrame = bonecol[indexId].WorldCFrame;
						(v :: Bone).WorldAxis = bonecol[indexId].WorldAxis;
						(v :: Bone).Transform = bonecol[indexId].Transform;
						(v :: Bone).WorldPosition = bonecol[indexId].WorldPosition;
						(v :: Bone).WorldSecondaryAxis = bonecol[indexId].WorldSecondaryAxis;
					end;
				end));
				
			end;
		end;
		
		cloneRoot.Anchored = true;
		
		
		local thread = task.spawn(function()
			local animcache = {};
			local signal = {};
			
			do
				for i,v in next , targetAnimator:GetPlayingAnimationTracks() do
					animcache[v] = cloneAnimator:LoadAnimation(v.Animation);
					animcache[v]:AdjustSpeed(v.Speed)
					animcache[v]:Play(0);
					
					if not signal[v] then
						task.spawn(function()
							signal[v] = true;

							repeat task.wait()
								animcache[v]:AdjustSpeed(v.Speed);
							until not v.IsPlaying;

							signal[v] = false;

							animcache[v]:Stop(0)
						end)
					end;
				end;
			end
			
			sig = targetAnimator.AnimationPlayed:Connect(function(anims)
				if not animcache[anims] then
					animcache[anims] = cloneAnimator:LoadAnimation(anims.Animation);
					animcache[anims]:AdjustSpeed(anims.Speed)
					animcache[anims]:Play(0);
				else
					animcache[anims]:AdjustSpeed(anims.Speed)
					animcache[anims]:Play(0);
				end;
				
				if not signal[anims] then
					signal[anims] = true;
					
					repeat task.wait()
						animcache[anims]:AdjustSpeed(anims.Speed);
					until not anims.IsPlaying;
					
					signal[anims] = false;

					animcache[anims]:Stop(0)
				end;
			end);
			
			while true do task.wait()
				local lookv = (CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,targetRoot.Position)).LookVector;
				local lot = targetRoot.Position + (lookv * 100);

				cloneRoot.CFrame = targetRoot.CFrame:Lerp(CFrame.new(lot),0.01);
			end;
		end);
		
		export._func[target] = {
			destroy = function()
				for i,v in next , blockPart do
					if export._cache[v] then
						export._cache[v]:Disconnect();
					end;
				end;
				
				sig:Disconnect();
				
				task.cancel(thread);
				
				for i,v in next , boneThreads do
					task.cancel(boneThreads);
				end;
				
				
				nornal:Destroy();
				wall:Destroy();
				
				export._func[target] = nil;
				NL_ESP._cache[target] = nil;
			end,	
		};
		
		NL_ESP._cache[target] = export._func[target];
		
		clone.Parent = workspace.CurrentCamera;
	end;
	
	return export;
end;

function NL_ESP:get_instance(target: Model)
	return NL_ESP._cache[target];
end;

return NL_ESP;
