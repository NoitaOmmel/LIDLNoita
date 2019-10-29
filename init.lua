world_loaded = false

print("FFI" .. tostring(ffi))

function OnWorldPreUpdate()
	if world_loaded then return end
	world_loaded = true

	print("LIDL Noita init")
	EntityLoad("mods/lidl_noita/files/lidl/lidl_fps.xml", 0, 0)
end
