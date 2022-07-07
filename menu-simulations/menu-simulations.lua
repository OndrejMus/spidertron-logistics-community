data.raw['utility-constants']['default'].main_menu_simulations.spidertron_logistics = {
	checkboard = false,
	save = '__spidertron-logistics__/menu-simulations/menu-simulation-spidertron-logistics.zip',
	length = 60 * 15,
	init = [[
		local logo = game.surfaces.nauvis.find_entities_filtered{name = 'factorio-logo-11tiles', limit = 1}[1]
		game.camera_position = {logo.position.x, logo.position.y + 9.75}
		game.camera_zoom = 1
		game.tick_paused = false
		game.surfaces.nauvis.daytime = 0.5
		
		script.on_event(defines.events.on_spider_command_completed, function(event)
			local spider = event.vehicle
			local surface = spider.surface
			
			local chest = surface.find_entities_filtered{name = {'spidertron-requester-chest', 'spidertron-provider-chest'}}
			chest = surface.get_closest({spider.position.x, spider.position.y + 2}, chest)
			local x, y = chest.position.x, chest.position.y
			
			if x == -51.5 and y == -32.5 then
				chest.insert{name = 'copper-plate', count = 1000}
				spider.autopilot_destination = {-19.5, -47.5}
			elseif x == -47.5 and y == -44.5 then
				chest.insert{name = 'copper-plate', count = 1000}
				spider.autopilot_destination = {-23.5, -36.5}
			elseif x == -23.5 and y == -36.5 then
				chest.remove_item{name = 'electronic-circuit', count = 1000}
				spider.autopilot_destination = {-16.5, -30.5}
			elseif x == -16.5 and y == -30.5 then
				chest.insert{name = 'electronic-circuit', count = 1000}
				spider.autopilot_destination = {-44.5, -79.5}
			end
		end)
	]]
}
