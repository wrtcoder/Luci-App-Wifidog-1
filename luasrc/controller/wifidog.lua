--[[
QQ:183130227
http://bbs.scjxsw.com
]]--

module("luci.controller.wifidog", package.seeall)


function index()
	local fs = require "nixio.fs"
	if fs.access("/usr/bin/wifidog") then --必须确认你/usr/bin下有wifidog文件
		entry({"admin", "services","wifidog"}, cbi("wifidog"), "WEB认证配置", 4)
		end
	
end

