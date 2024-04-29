-- init  right-status.lua config
require('events.right-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()
require('utils.backdrops'):set_files():random()

local _Config_ = require('config.init')

return _Config_:init()
	:append(require('config.appearance'))
	:append(require('config.fonts'))
	:append(require('config.bindings'))
	:append(require('config.general'))
	:append(require('config.launch')).options
