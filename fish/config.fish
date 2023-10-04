# This disables the Fish welcoming message

set fish_greeting ""

# This will only run when Fish starts interactively. 
# This sets a few aliases, you can change accordingly to your package manager

if status is-interactive
    alias s=doas
    alias it="doas xbps-install"
    alias e="exa -a --icons"
    alias up="doas xbps-install -Su"
    alias sr="xbps-query -Rs"
    alias unadd="doas xbps-remove -Ro"
    alias down="yt-dlp -x --audio-format mp3 --audio-quality 0"
    alias neo=neofetch
    alias :q=exit
end

# Here is a little script to create a RUNTIME DIR. If you are using an distro with Systemd, you probably won't need this

if not [ -e /run/user/1000 ]
    doas mkdir -p /run/user/1000
    doas chmod 700 /run/user/1000
    doas chown 1000 /run/user/1000
    set -x XDG_RUNTIME_DIR /run/user/1000
end

# Some environment variables to make apps use Wayland natively
# (In Fish you don't use export, you use "set -x variableName variableValue")

set -x XDG_CURRENT_DESKTOP river
set -x QT_QPA_PLATFORM wayland-egl
set -x MOZ_ENABLE_WAYLAND 1
set -x SDL_VIDEODRIVER wayland
set -x ELM_DISPLAY wl
set -x QT_QPA_PLATFORMTHEME qt5ct

# Little script that only runs if Fish runs interactively and as a login shell. 
# If you have a display manager like gdm or lightdm, you won't need this
# You can just press Return to start River. You can also type "Y" "y" to start it
# If you don't want to start River, just press Space or any letter before pressing Return

if status is-login
     and status is-interactive
     and not pidof river
     read response --prompt-str "Start River? >  "
     switch $response
        case y Y yes ""
            dbus-run-session river &
        case '*'
            echo "Not starting River..."
end
end

# Another script to set up $PATH with Rust stuff

if not echo $PATH | rg -q cargo
    set -x PATH "$PATH:/home/void/.cargo/bin"
end

# You can find more information about Fish languague on https://fishshell.com/docs/current/language.html 
