vim.api.nvim_create_user_command("ColorizerAttachToBuffer", function()
	require("colorizer").attach_to_buffer(0)
end, {})
vim.api.nvim_create_user_command("ColorizerDetachFromBuffer", function()
	require("colorizer").detach_from_buffer(0)
end, {})
vim.api.nvim_create_user_command("ColorizerReloadAllBuffers", require("colorizer").reload_all_buffers, {})
vim.api.nvim_create_user_command("ColorizerToggle", function()
	local c = require("colorizer")
	if c.is_buffer_attached(0) then
		c.detach_from_buffer(0)
	else
		c.attach_to_buffer(0)
	end
end, {})
