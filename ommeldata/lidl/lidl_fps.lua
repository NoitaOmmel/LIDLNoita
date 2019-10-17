dofile( "data/scripts/lib/coroutines.lua" )
dofile( "data/scripts/lib/utilities.lua" )


local gui = nil
local fps = 0

local last_time = os.clock()
async_loop(function()
	if gui ~= nil then
		GuiStartFrame( gui )
	end

	GuiLayoutBeginVertical( gui, 15, 2 )
	GuiTextCentered( gui, 0,0, "LIDL NOITA | FPS: " .. tostring(fps))
	GuiLayoutEnd( gui )

	wait(0)
end)

async_loop(function()
	local cur_time = os.clock()
	fps = math.floor((1 / (cur_time - last_time)) * 60)
	last_time = cur_time
	wait(60)
end)


async(function()
	gui = GuiCreate()
end)
--[[
	GuiDestroy( gui )
	gui_frame_fn = nil
	gui = nil
	
	GameRemoveFlagRun( "ending_no_game_over_menu" )
	EntityKill( GetUpdatedEntityID() )
end)
]]
