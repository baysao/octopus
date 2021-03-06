return {
	extensions = {
		{octopusExtensionsDir .. "/../common/", "core"}, 
		{octopusExtensionsDir, "baseline"}, 
		{octopusExtensionsDir .. "/../common/", "orm"}, 
		{octopusExtensionsDir, "security"}, 
		{octopusExtensionsDir, "editor"}, 
		{octopusExtensionsDir, "repository"}, 
		{octopusExtensionsDir, "database"}, 
		{octopusExtensionsDir, "shop"}, 
		{octopusExtensionsDir, "demo"},
	},
	
	octopusExtensionsDir = octopusExtensionsDir,
	octopusHostDir = octopusHostDir,
	port = 8787,
	securePort = 38787,
	luaCodeCache = "off",
	serverName = "localhost",
	errorLog = "error_log logs/error.log;",
	accessLog = "access_log logs/access.log;",
	includeDrop = [[#include drop.conf;]],
	maxBodySize = "50k",
	
	databaseConnection = {
		rdbms       =   "postgres",
		host        =   "127.0.0.1",
		port        =   5432, 
		database    =   "demo",
		user        =   "demo",
		password    =   "demo",
		compact     =   false
	},

	globalParameters = {
		octopusHostDir = octopusHostDir,
		sourceCtxPath = "",
		requireSecurity = false,
		sessionTimeout = 3600,
	},
}