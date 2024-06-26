-- 初始化 --

local wezterm = require('wezterm')

local Config = {}

---Initialize Config
function Config:init()
   self.__index = self
   local config = setmetatable({ options = {} }, self)
   return config
end

---Append to `Config.options`
function Config:append(new_options)
   for k, v in pairs(new_options) do
      if self.options[k] ~= nil then
         wezterm.log_warn(
            'Duplicate config option detected: ',
            { old = self.options[k], new = new_options[k] }
         )
         goto continue
      end

      self.options[k] = v
      ::continue::
   end

   return self
end

return Config
