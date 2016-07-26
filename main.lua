--
-- Created by IntelliJ IDEA.
-- User: rbeal
-- Date: 7/26/16
-- Time: 10:10 PM
-- To change this template use File | Settings | File Templates.
--


local component = require("component")
local event = require("event")
local m = component.modem -- get primary modem component
m.open(123)
print(m.isOpen(123)) -- true

while true do
    local _, _, _, _, _, msg = event.pull("modem_message")
    if msg == "start_display" then
        display()
        end
end


function display()

    os.execute("resolution 5 1")
    print("Hello")

    os.sleep(2)
    os.execute("resolution 160 5")

end



