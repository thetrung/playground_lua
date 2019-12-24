----------------------------------------------
--                     REPL                 --
----------------------------------------------

-- Test loadstring() on statement:
i = 0
f = loadstring("i = i + 1")
f();print(i)

-- Start here
local lines = " "
local is_defining_fn = false
print("===================================")
print("========== LUA REPL v1.0 ==========")
print("===================================")

-- REPL
while true do
  io.write('> ')
  line = io.read()

  if line == "eval" then
    print()
    -- load source code
    local f = loadstring(lines)
    -- execute:
    if pcall(f) then
      -- print value
      io.write("\n<" .. tostring(f) .. ">\n  " .. lines .. "\n\n")
      print("__________________________________________")
    else
      print("Error: " .. lines)
    end
    lines = " "

  elseif line == "quit" then
    print("\n(~ Goodbye ~)\n")
    break
  else
    if not is_defining_fn then
      local found_fn = string.find(line, 'function')
      is_defining_fn = found_fn ~= nil
      -- if found_fn then
      --   print("line: " .. found_fn)
      -- end
    else
      is_defining_fn = string.find(line, 'end') == nil
      if not is_defining_fn then
        lines = lines .. " " .. line
        line = ''
      end
    end
    -- acc
    if lines == " " then
      lines = line
    elseif line ~= '' then
        -- similar to (a ? b : c)
      lines = lines .. (is_defining_fn and " " or ";") .. line
    end
  end
end
