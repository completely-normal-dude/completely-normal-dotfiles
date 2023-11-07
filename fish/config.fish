
set fish_greeting "" # This disables the Fish welcome message

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
    alias gs="git status"
    alias off="doas poweroff"
    alias rest="doas reboot"
    alias dc=cd
end

# Create a runtime directory, useful if you don't have SystemD
# and you don't want elogind

# This needs to be executed once: set -Ux XDG_RUNTIME_DIR /run/user/1000

if not test -e /run/user/1000 
    doas mkdir -p /run/user/1000
    doas chmod 700 /run/user/1000
    doas chown 1000 /run/user/1000
end

# Start River if Fish runs as a login shell

if status is-login && status is-interactive && not pidof -q river
     read response -n 1 -P "Launch River?"\n"> "
     switch $response
        case y Y ""
            echo \n"Launching River..."\n
            dbus-run-session river 
        case '*'
            echo \n"Not launching River..."\n
     end
end

# Another script to set up $PATH with Rust stuff

if not echo $PATH | rg -q cargo
    set -x PATH "$PATH:/home/void/.cargo/bin"
end

# You can find more information about Fish languague on https://fishshell.com/docs/current/language.html 
