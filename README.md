# Lua/LuaJIT playground
A collection of testing feature and toying around this adorable language.

### Notes

#### 1. Ternary operators
Ternary operators are a useful feature in C:
```
    int value = x>3 ? 1 : 0;
```
Roughly translates to the following Lua:
```
    value = x > 3 and 1 or 0
```

#### 2. Lambda Function 
```
    function (n) return n * n end
```
So it can be assigned into any variables :
```
    square = function (n) return n * n end
```
or table :
```
	map = { ["square"] = square }
```

#### 3. String 

String conversion :
```
    tostring(1)--=> "1"
```

String length :
```
    string.len("ABCD") --=> 4
```

Sub string :
```
    string.sub("ABC",1,2)--=> AB
```

Find word in a string :
```
    string.find("Hello World", "World") --=> true
```

#### 4. Self 

Any local, global variable on script scope is shared among instances.
```
shared_value = 10
local _shared_private_value = 10
```

But any varible attached to `self` will stay on its own instance :
```
function init(self)
    self.instance_value = 11
end
```

#### 5. Meta Table 
Here's how dynamic hashed value store when there's none assigned to "hashed" table :
```
local _M = {}

setmetatable(_M, {
	__index = function(t, key)
		local h = hash(key)
		rawset(t, key, h)
		return h
	end
})

return _M
```
