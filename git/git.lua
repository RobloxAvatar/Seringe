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
local function spider(struct)
	local st = os.clock()
	warn('------------------')
	local treestrct = {}
	for i, v in pairs(struct) do
		a = v:split('/')
		if a[4] == 'tree' then
			local b = syn.request({
				Url = 'https://github.com' .. v,
				Method = 'GET'
			})
			for i = 2, #b.Body:split([[<div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">]]) do
				table.insert(treestrct, b.Body:split([[<div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">]])[i]:split('href')[2]:split('="')[2]:split('"')[1])
				wait()
			end
			prev = ''
            vv = ''
			for i, vv in pairs(a) do
				if true then
					prev = prev .. '/' .. vv:gsub('/tree/', '')
					return vv, prev
				end
			end
		end
		if a[4] == 'blob' then
			local rawst = v:split('blob/')
			e = rawst[1] .. '' .. rawst[2]
			a = game:HttpGet('https://raw.githubusercontent.com' .. e)
			return rawst[1]:gsub('', '') .. '' .. rawst[2]
			writefile(rawst[1]:gsub('', '') .. '' .. rawst[2], a)
		end
		wait()
	end
	local en = os.clock()
	warn('---------[Time elapsed: ' .. tostring(os.clock() - st) .. ']---------')
	wait(.1)
	if treestrct[1] then
		spider(treestrct)
	end
end

print(#struct)
spider(struct)
end
return git
