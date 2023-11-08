# This disables the Fish welcome message

set fish_greeting ""

# This will only run when Fish starts interactively
# This sets a few aliases, you can change accordingly to your package manager

if status is-interactive
    alias s=doas
    alias it="doas pacman -S --needed"
    alias it!="paru -S --needed"
    alias e="eza -a --icons"
    alias e!="eza -al --icons"
    alias up="doas pacman -Syu --needed"
    alias sr="pacman -Ss"
    alias sr!="paru -Ss"
    alias unadd="doas pacman -Rs"
    alias down="yt-dlp -x --audio-format mp3 --audio-quality 0"
    alias neo=neofetch
    alias :q=exit
    alias gs="git status"
    alias off="poweroff"
    alias dc=cd
    alias gclon="git clone"
end

# Little script that only runs if Fish runs interactively and as a login shell. 
# If you have a display manager like GDM or LightDM, you won't need this
# You can just press Return to start River. You can also type "Y" or "y" to start it
# If you don't want to start River, just press Space or any letter

if status is-login && status is-interactive && not pidof -q river
     echo "- Select a WM"
     read response -n 1 -P "1 -> Hyprland"\n"2 -> River"\n"3 -> SwayFX"\n"4 -> Wayfire"\n"> "
     switch $response
        case "1" ""
            echo \n"Launching Hyprland..."\n
            dbus-run-session Hyprland
        case "2"
            echo \n"Launching River..."\n
            dbus-run-session river 
        case "3"
            echo \n"Launching SwayFX..."\n
            dbus-run-session sway
        case "4"
            echo \n"Launching Wayfire"\n
            dbus-run-session wayfire
        case '*'
            echo \n"No GUI for you..."\n
end
end


if not printf $PATH | rg -q /home/void/.local/bin
    set -x PATH "$PATH:/home/void/.local/bin"
end
