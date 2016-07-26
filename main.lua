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
    local event, side, frequency, replyFrequency, message, distance = event.pull("modem_message")
    print("Message received from the open modem on the "..side.." side of this computer.")
    print("Frequency: "..frequency)
    print("Requested reply frequency: "..replyFrequency)
    print("Distance: "..distance)
    print("Message is as follows: "..message)
end




function display()

    os.execute("resolution 5 1")
    print("Hello")

    os.sleep(2)
    os.execute("resolution 160 5")

end



