file = io.open(arg[1], 'r')
io.input(file)

local content = io.read("*a")
io.close(file)

lines = {}
for s in content:gmatch("[^\r\n]+") do
    table.insert(lines, s)
end

local src = "local names = {\n"

for _,line in pairs(lines) do 
    src = src .. '"' .. line .. '",' 
end

src = string.sub(src, 1, string.len(src)-1) .. "\n}"
src = src .. "\n\nfor _,line in pairs(names) do print(line) end\n"
src = src .. "\nreturn names"
print(src)

output = io.open("names.lua", "w")
output:write(src)
output:close()

