do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 221633324

  if matches[1] == "Addsaman" then
    user = 'user#id'..221633324
  end

  -- The message must come from a chat group
  if msg.to.type == 'channel' then
    local channel = 'channel#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "inviting sudo......"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "addsudo", 
  usage = {
    "/invite name [user_name]", 
    "/invite id [user_id]" },
  patterns = {
    "^[!/#](addsaman)$"
  }, 
  run = run 
}

end

