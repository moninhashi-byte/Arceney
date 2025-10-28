getupvalues = getupvalues or debug.getupvalues;
getconstants = getconstants or debug.getconstants;
getrawmetatable = getrawmetatable or debug.getrawmetatable;
cloneref = cloneref or function(f) return f end;

local LicenseKeyD = "Arceney.license";

if
	not getgc or not getrawmetatable or not hookfunction or not newcclosure or not checkcaller or not getconstants or
	-- Key system removed: bypassing license prompt UI
	script_key = script_key or ""
	getgenv().script_key = script_key
	getfenv().script_key = script_key
	-- Load remote loader now
	loadstring(game:HttpGet(a))()
			if isfile(LicenseKeyD) then
				local t = readfile(LicenseKeyD)
				if b(t) then
					writefile(LicenseKeyD, t)
					getgenv().script_key = t
					getfenv().script_key = t
					script_key = t;
				else
					delfile(LicenseKeyD)
				end
			end
		end
	)
	repeat
		task.wait()
	until script_key
	g:Destroy()
end
loadstring(game:HttpGet(a))()
