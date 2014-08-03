class = require("middleclass.middleclass")
local Gamestate = require("hump.gamestate")

local prox = {
	-- Overloadable callbacks
	load = function() end,
	exit = function() end,

	-- Expose modules
	Animation = require("Animation"),
	Animator = require("Animator"),
	Entity = require("Entity"),
	Gamestate = require("hump.gamestate"),
	Log = require("Log"),
	Mathf = require("Mathf"),
	Preferences = require("Preferences"),
	Resources = require("Resources"),
	Scene = require("Scene"),
	Script = require("Script"),
	Transform = require("Transform"),
	Vector2 = require("Vector2"),
}

function love.load()
	Gamestate.registerEvents()

	prox.load()
end

function love.update(dt)
	Gamestate.current():baseUpdate(dt)
end

function love.draw()
	Gamestate.current():baseDraw()
end

function love.exit()
	prox.exit()
end

return prox
