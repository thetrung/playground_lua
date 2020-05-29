# Lua/LuaJIT playground
A collection of testing feature and toying around this adorable language.

### Notes

1. Ternary operators

Ternary operators are a useful feature in C:
```
    int value = x>3 ? 1 : 0;
```
Roughly translates to the following Lua:
```
    value = test and x or y
```

2. Lambda Function 
```
    function (n) return n * n end
```
So it can be assigned into any variable or table :
```
    square = function (n) return n * n end
    
    map = { ["square"] = square }
```

3. String 

```
    tostring(1)--=> "1"
    
    string.len("ABCD") --=> 4
    
    string.sub("ABC",1,2)--=> AB
    
    string.find("Hello World", "World") --=> true
```

4. Meta Table 

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
