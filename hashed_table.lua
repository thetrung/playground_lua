local _hashed = {}
hashed = {};
local mt = {
	__index  = function(t, k)
		if _hashed[k] == nil then
			_hashed[k] = hash(k)
		end 
		return _hashed[k]
	end
}
setmetatable(hashed, mt)

function hashname_of(hash_name)
	local other_id = tostring(hash_name) 
	other_id = string.sub(other_id, 9, string.len(other_id)-1)
	-- print("" .. other_id)  
	return other_id
end
