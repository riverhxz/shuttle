on ApplicationIsRunning(appName)
	tell application "System Events" to set appNameIsRunning to exists (processes where name is appName)
	return appNameIsRunning
end ApplicationIsRunning

set isRunning to ApplicationIsRunning("iTerm")

tell application "iTerm"
	tell the current terminal
		if isRunning then
			set newSession to (launch session "Default Session")
			tell the last session
				write text "expect"
				write text "spawn ssh huanghaihun@192.168.64.250" 
				write text "expect \"assword:\""
				write text "sleep 0.3"
				write text "send \"G123654j\""
				write text "interact
"
			end tell
		else
			tell the current session
				write text "expect"
				write text "spawn ssh huanghaihun@192.168.64.250"
				write text "expect \"assword:\""
				write text "sleep 0.3"
				write text "send \"G123654j\""
				write text "interact
"
				activate
			end tell
		end if
	end tell
end tell
