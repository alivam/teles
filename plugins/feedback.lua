do

function run(msg, matches)

local fuse = '😜 we have recived a new feedback :\n————————————————————\nID▶️ : ' .. msg.from.id .. '\n——————————————————\nName▶ : ' .. msg.from.print_name ..'\n——————————————————\nusername▶️ :@ ' .. msg.from.username  ..'\n——————————————————\nGroup name▶ : '..string.gsub(msg.to.print_name, "_", " ")..'\n——————————————————\nGroup ID▶ : ' .. msg.to.id ..'\n——————————————————\n🅿️♏️ :\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                    --for banned people
                return 'You are banned to send a feedback'
 else


                 local sends0 = send_large_msg('user#id138342554', fuse, ok_cb, false)

 return 'your feedback succesfully recived to @SUDO_USER😜!'

     

end

end
return {
  description = "Feedback",

  usage = "!feedback : send maseage to admins with bot",
  patterns = {
    "^[/#$!][Ff]eedback (.*)$",
    "^[Ff]eedback (.*)$",
     "^[Ff] (.*)$",
     "^[/#$!][Ff] (.*)$"

  },
  run = run
}

end
