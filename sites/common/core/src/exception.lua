local json = require "json"


return function (err)
	if not ngx then 
		print(err .. "\n\t" .. debug.traceback())
		error(err)
	end

	if err then
		if type(err) == "table" then
			ngx.log(ngx.ERR, json.encode(err) .. "\n\t" .. debug.traceback())
		else
			ngx.log(ngx.ERR, err .. "\n\t" .. debug.traceback())
		end
	else
		err = "error"
		ngx.log(ngx.ERR, err .. "\n\t" .. debug.traceback())
	end

	error(err)
end