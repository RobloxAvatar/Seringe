local git = {}
if not syn then
    syn = {}
    if http.request then syn.request = http.request elseif SENTINEL_V2 then syn.request = request else syn.request = function(tbl) b = {}; b.Body = game:HttpGet(tbl['Url']); return b end end
end
git.clone = function(xdd) 
a = syn.request({
	Url = xdd,
	Method = 'GET'
})
local struct = {}
for i = 2, #a.Body:split([[<div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">]]) do
	table.insert(struct, a.Body:split([[<div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">]])[i]:split('href')[2]:split('="')[2]:split('"')[1])
end

local treestrct = {}
for i, v in pairs(struct) do
a = v:split('/')
	makefolder(a[2] .. '/' .. a[3] .. '/main')
	if a[4] == 'tree' then
		print(v .. ' tree found')
		local b = syn.request({
			Url = 'https://github.com' .. v,
			Method = 'GET'
		})
		for i = 2, #b.Body:split([[<div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">]]) do
			table.insert(treestrct, b.Body:split([[<div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">]])[i]:split('href')[2]:split('="')[2]:split('"')[1])
			wait()
		end
		prev = ''
	    for i, vv in pairs(a) do
		warn(vv)
		if true then
			prev = prev .. '/' .. vv:gsub('/tree/', '')
			warn(vv, prev)
			makefolder(prev:gsub('/tree/', '/'))
		end
	end
end

return git
