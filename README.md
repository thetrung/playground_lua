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
