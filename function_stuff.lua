----------------------------------------------
--        TAIL RECURSION FUNCTION           --
----------------------------------------------
function fib(a, n)
  if n > 0 then
    return fib(a * n, n - 1)
  else
    return a
  end
end

print(fib(1, 100))

----------------------------------------------
--        ASSIGN F(X) TO VARIABLE           --
----------------------------------------------
square = function (n)
  return n * n
end

print(square(10))

----------------------------------------------
--              NAMELESS FUNCTION           --
----------------------------------------------
-- nameless function assigned to string
ast = {
  ["square"] = function (n) return n * n end
}

print(ast["square"](10))

----------------------------------------------
--               TABLE SORT                 --
----------------------------------------------

network = {
  {name = "grauna",  IP = "210.26.30.34"},
  {name = "arraial", IP = "210.26.30.23"},
  {name = "lua",     IP = "210.26.23.12"},
  {name = "derain",  IP = "210.26.23.20"},
}

table.sort(network, function (a,b)
 return (a.name < b.name)
end)

show = function()
  -- sorted by nameless function
  for k,v in pairs(network) do
    print(v.name)
  end
  print("")
end

print("========================")
print("After sorting:\n")
show()
