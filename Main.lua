local module = {}

function module.Create(name, parent)
   return function(props)
      local new = Instance.new(name)
      for i, v in next, props do
         if type(i) == 'number' then
            v.Parent = new
         else
            new[i] = v
         end
      end
      new.Parent = new.Parent or parent
      return new
   end
end

module.Signal = require 'Signal'

return module
