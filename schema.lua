local function check_for_replace_pattern(value)
    for _, replace_pattern in ipairs(value) do
        local found = string.find(replace_pattern, "###")
        if not found then
            return false, "Replace pattern '" .. replace_pattern .. "' must contain '###' separator."
        end
    end
    return true
end

return {
name = "kong-response-string-replace",
fields = {
        { content_types = { type = "array", elements = { type = "string" }, default = {} } },
        { uri_patterns = { type = "array", elements = { type = "string" }, default = {} } },
        { body_replace_patterns = { type = "array", elements = { type = "string" }, default = {} } },
        { header_replace_patterns = { type = "array", elements = { type = "string" }, default = {} } }
    }
}
