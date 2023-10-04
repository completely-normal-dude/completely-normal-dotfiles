if pidof pipewire 
    if zenity --question --text="PipeWire is already running.\nDo you want to restart it?"
        killall pipewire &
        sleep 1
        pipewire &
    end
else
	pipewire &
end
