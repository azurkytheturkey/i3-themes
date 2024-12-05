#!/usr/bin/env bash
#im gonna end it bro im in this file so fucking much man you do not understand the true cock and ball torture for this file
# Color files
PFILE="$HOME/.config/polybar/colors.ini"
RFILE="$HOME/.config/polybar/scripts/rofi/colors.rasi"

# Change colors
change_color() {
    # Update polybar colors
    sed -i -e "s/background = #.*/background = $BG/g" "$PFILE"
    sed -i -e "s/foreground = #.*/foreground = $FG/g" "$PFILE"
    sed -i -e "s/sep = #.*/sep = $SEP/g" "$PFILE"
    sed -i -e "s/ac = #.*/ac = $AC/g" "$PFILE"
    sed -i -e "s/se = #.*/se = $SE/g" "$PFILE"
    sed -i -e "s/^white = #.*/white = $white/g" "$PFILE"
    sed -i -e "s/^black = #.*/black = $black/g" "$PFILE"
    sed -i -e "s/^red = #.*/red = $red/g" "$PFILE"
    sed -i -e "s/^pink = #.*/pink = $pink/g" "$PFILE"
    sed -i -e "s/^purple = #.*/purple = $purple/g" "$PFILE"
    sed -i -e "s/^blue = #.*/blue = $blue/g" "$PFILE"
    sed -i -e "s/^cyan = #.*/cyan = $cyan/g" "$PFILE"
    sed -i -e "s/^teal = #.*/teal = $teal/g" "$PFILE"
    sed -i -e "s/^green = #.*/green = $green/g" "$PFILE"
    sed -i -e "s/^lime = #.*/lime = $lime/g" "$PFILE"
    sed -i -e "s/^yellow = #.*/yellow = $yellow/g" "$PFILE"
    sed -i -e "s/^amber = #.*/amber = $amber/g" "$PFILE"
    sed -i -e "s/^orange = #.*/orange = $orange/g" "$PFILE"
    sed -i -e "s/^brown = #.*/brown = $brown/g" "$PFILE"
    sed -i -e "s/^indigo = #.*/indigo = $indigo/g" "$PFILE"
    sed -i -e "s/^gray = #.*/gray = $gray/g" "$PFILE"
    sed -i -e "s/^blue-gray = #.*/blue-gray = $blue_gray/g" "$PFILE"


    # Generate rofi color scheme
    cat > "$RFILE" << EOF
/* colors */

* {
  al:   #00000000;
  bg:   ${BG}FF;
  bga:  ${BGA}FF;
  fg:   ${FG}FF;
  ac:   ${AC}FF;
  se:   ${SE}FF;
}
EOF

    # Restart polybar
    polybar-msg cmd restart
}

run_with_check() {
    CMD="$1"
    DESCRIPTION="$2"
    RETRIES=5
    DELAY=1

    for ((i=1; i<=RETRIES; i++)); do
        eval "$CMD"
        if [[ $? -eq 0 ]]; then
            echo "$DESCRIPTION succeeded."
            return 0
        else
            echo "Attempt $i/$RETRIES: $DESCRIPTION failed. Retrying in $DELAY seconds..."
            sleep "$DELAY"
        fi
    done
    echo "Error: $DESCRIPTION failed after $RETRIES attempts."
    return 1
}

if [[ $1 = "--default" ]]; then
    # Define colors
    white="#FFFFFF"
    black="#000000"
    red="#E67E80"
    pink="#EC407A"
    purple="#BA68C8"
    blue="#42A5F5"
    cyan="#4DD0E1"
    teal="#00B19F"
    green="#61C766"
    lime="#B9C244"
    yellow="#FDD835"
    amber="#FBC02D"
    orange="#E57C46"
    brown="#AC8476"
    indigo="#6C77BB"
    gray="#9E9E9E"
    blue_gray="#6D8895"

    # Set theme colors
    BG="#212B30"
    FG="#C4C7C5"
    BGA="#263035"
    SEP="#3F5360"
    AC="#EC407A"   # Use hex code directly
    SE="#4DD0E1"   # Use hex code directly
    change_color
elif [[ $1 = "--nord" ]]; then
    # Define colors
    white="#ECEFF4"
    black="#2E3440"
    red="#BF616A"
    pink="#B48EAD"
    purple="#B48EAD"
    blue="#81A1C1"
    cyan="#88C0D0"
    teal="#8FBCBB"
    green="#A3BE8C"
    lime="#A3BE8C"
    yellow="#EBCB8B"
    amber="#D08770"
    orange="#D08770"
    brown="#5E81AC"
    indigo="#5E81AC"
    gray="#4C566A"
    blue_gray="#3B4252"

    # Set theme colors
    BG="#2E3440"    # Use hex code directly
    FG="#ECEFF4"    # Use hex code directly
    BGA="#454C5C"
    SEP="#5B6579"
    AC="#BF616A"    # Use hex code directly
    SE="#88C0D0"    # Use hex code directly
    change_color
elif [[ $1 = "--gruvbox" ]]; then
    # Define colors
    white="#EBDBB2"
    black="#282828"
    red="#FB4934"
    pink="#D3869B"
    purple="#B16286"
    blue="#458588"
    cyan="#83A598"
    teal="#8EC07C"
    green="#98971A"
    lime="#B8BB26"
    yellow="#D79921"
    amber="#FABD2F"
    orange="#FE8019"
    brown="#504945"
    indigo="#83A598"
    gray="#928374"
    blue_gray="#665C54"

    # Set theme colors
    BG="#282828"    # Use hex code directly
    FG="#EBDBB2"    # Use hex code directly
    BGA="#313131"
    SEP="#505050"
    AC="#FB4934"    # Use hex code directly
    SE="#8EC07C"    # Use hex code directly
    change_color
elif [[ $1 = "--dark" ]]; then
    # Define colors
    white="#93A1A1"
    black="#141C21"
    red="#D12F2C"
    pink="#D12F2C"
    purple="#6C71C4"
    blue="#268BD2"
    cyan="#2AA198"
    teal="#33C5BA"
    green="#859900"
    lime="#859900"
    yellow="#B58900"
    amber="#CB4B16"
    orange="#CB4B16"
    brown="#6C71C4"
    indigo="#268BD2"
    gray="#657B83"
    blue_gray="#3C4449"

    # Set theme colors
    BG="#141C21"    # Use hex code directly
    FG="#93A1A1"    # Use hex code directly
    BGA="#1E262B"
    SEP="#3C4449"
    AC="#D12F2C"    # Use hex code directly
    SE="#33C5BA"    # Use hex code directly
    change_color
elif [[ $1 = "--cherry" ]]; then
    # Define colors
    white="#FFFFFF"
    black="#1F1626"
    red="#D94084"
    pink="#D94084"
    purple="#B381C5"
    blue="#4F5D95"
    cyan="#4F5D95"
    teal="#00B19F"
    green="#61C766"
    lime="#B9C244"
    yellow="#FDD835"
    amber="#FBC02D"
    orange="#E57C46"
    brown="#AC8476"
    indigo="#6C77BB"
    gray="#9E9E9E"
    blue_gray="#473F4E"

    # Set theme colors
    BG="#1F1626"    # Use hex code directly
    FG="#FFFFFF"    # Use hex code directly
    BGA="#292030"
    SEP="#473F4E"
    AC="#D94084"    # Use hex code directly
    SE="#4F5D95"    # Use hex code directly
    change_color
fi
if [[ $1 = "--catppuccin" ]]; then
    echo "Applying Catppuccin theme..."

    # Apply i3 configuration
    run_with_check "cp ~/.config/i3/themes/i3-catppuccin ~/.config/i3/config" "Copying i3 config for Catppuccin"
    run_with_check "i3-msg reload" "Reloading i3 configuration"

    # Apply Polybar configuration
    #run_with_check "cp ~/.config/polybar/themes/config-catppuccin ~/.config/polybar/config.ini" "Copying Polybar config for Catppuccin"
    #run_with_check "polybar-msg cmd restart" "Please"

    # Update Alacritty theme
    run_with_check "cp ~/.config/alacritty/themes/catppuccin ~/.config/alacritty/alacritty.toml" "Copying Alacritty config for Catppuccin"

    # Set wallpapers
    run_with_check "nitrogen --set-scaled ~/Downloads/cabin.png --head=0" "Setting wallpaper for head 0"
    run_with_check "nitrogen --set-scaled ~/Downloads/catppuccin-mocha-asian-town.png --head=1" "Setting wallpaper for head 1"

    # Apply Dunst notifications
    run_with_check "cp ~/.config/dunst/themes/catppuccin-noti ~/.config/dunst/dunstrc" "Copying Dunst config for Catppuccin"
    run_with_check "killall dunst" "Not Helping Dunst"
    #run_with_check "dunst" "Restarting Dunst"

    #Fish
    run_with_check "cp ~/.config/fish/themes/catppuccin ~/.config/fish/config.fish" "Fishing"
    run_with_check "source ~/.config/fish/config.fish" "Confirm"

    # GTK 2
    run_with_check "cp ~/.config/gtk-2.0/themes/catppuccin ~/.gtkrc-2.0" "gtk"
    run_with_check "cp ~/.config/gtk-3.0/themes/catppuccin  ~/.config/gtk-3.0/settings.ini" "gtk"

    #spotify
    run_with_check "spicetify config current_theme catppuccin"
    run_with_check "spicetify config color_scheme mocha"    
    run_with_check "spicetify apply"

    #cava
    run_with_check "cp ~/.config/cava/themes/catppuccin ~/.config/cava/config" "cava"

    # 2 different days spent on coloring i feel autistic. 

    # Define colors 
    white="#CDD6F4"
    black="#11111B"
    red="#F38BA8"
    pink="#F5C2E7"
    purple="#CBA6F7"
    blue="#89B4FA"
    cyan="#89DCEB"
    teal="#94E2D5"
    green="#A6E3A1"
    lime="#A6E3A1"
    yellow="#F9E2AF"
    amber="#FAB387"
    orange="#FAB387"
    brown="#F2CDCD"
    indigo="#B4BEFE"
    gray="#7F849C"
    blue_gray="#89B4FA"

    # Set theme colors
    BG="#11111B"    # Use hex code directly
    FG="#CDD6F4"    # Use hex code directly
    BGA="#1E1E2E"
    SEP="#45475A"
    AC="#F38BA8"    # Use hex code directly
    SE="#CBA6F7"    # Use hex code directly

    run_with_check "cp ~/.config/polybar/themes/config-catppuccin ~/.config/polybar/config.ini" "Copying Polybar config for Catppuccin"
    run_with_check "polybar-msg cmd restart" "Please"

    run_with_check "change_color"

    run_with_check "cp ~/.config/polybar/themes/config-catppuccin ~/.config/polybar/config.ini" "Copying Polybar config for CatppDSADSAdsa"
    run_with_check "polybar-msg cmd restart" "Please FOR THE TWO TIME"

    # shhhhh
    run_with_check "killall -g vesktop"
    sleep 1
    run_with_check "legcord"
    sleep 3
    run_with_check "pkill vesktop"
    sleep 3
    run_with_check "pkill vesktop"
    sleep 3
    run_with_check "pkill vesktop"
    


elif [[ $1 = "--everforest" ]]; then
    echo "Applying Everforest theme..."

    # Apply i3 configuration
    run_with_check "cp ~/.config/i3/themes/i3-everforest ~/.config/i3/config" "Copying i3 config for Everforest"
    run_with_check "i3-msg reload" "Reloading i3 configuration"

    # Apply Polybar configuration
    #run_with_check "cp ~/.config/polybar/themes/config-everforest ~/.config/polybar/config.ini" "Copying Polybar config for Everforest"
    #sleep 1
    #run_with_check "polybar-msg cmd restart" "Please"

    # Update Alacritty theme
    run_with_check "cp ~/.config/alacritty/themes/everforest ~/.config/alacritty/alacritty.toml" "Copying Alacritty config for Everforest"

    # Set wallpapers
    run_with_check "nitrogen --set-scaled ~/Downloads/foggy_valley_1.png --head=0" "Setting wallpaper for head 0"
    run_with_check "nitrogen --set-scaled ~/Downloads/wallpaper2.png --head=1" "Setting wallpaper for head 1"

    # Apply Dunst notifications
    run_with_check "cp ~/.config/dunst/themes/everforest-noti ~/.config/dunst/dunstrc" "Copying Dunst config for Everforest"
    run_with_check "killall dunst" "Not Helping Dunst"


    #Fish
    run_with_check "cp ~/.config/fish/themes/everforest ~/.config/fish/config.fish" "Fishing"
    run_with_check "source ~/.config/fish/config.fish" "Confirm"

    # GTK
    run_with_check "cp ~/.config/gtk-2.0/themes/everforest ~/.gtkrc-2.0" "gtk"
    run_with_check "cp ~/.config/gtk-3.0/themes/everforest  ~/.config/gtk-3.0/settings.ini" "gtk"
    
    #spotify
    run_with_check "spicetify config current_theme Comfy"
    run_with_check "spicetify config color_scheme everforest"
    run_with_check "spicetify apply"

    #cava
    run_with_check "cp ~/.config/cava/themes/everforest ~/.config/cava/config" "cava"

    # Define colors for everforest
    white="#D3C6AA"
    black="#343F44"
    red="#E67E80"
    pink="#D699B6"
    purple="#D699B6"
    blue="#7FBBB3"
    cyan="#7FBBB3"
    teal="#83C092"
    green="#A7C080"
    lime="#A7C080"
    yellow="#DBBC7F"
    amber="#E69875"
    orange="#E69875"
    brown="#AC8476"
    indigo="#543A48"
    gray="#7A8478"
    blue_gray="#859289"

    # Set theme colors
    BG="#343F44"    # Use hex code directly
    FG="#D3C6AA"    # Use hex code directly
    BGA="#343F44"
    SEP="#4F585E"
    AC="#E67E80"    # Use hex code directly
    SE="#A7C080"    # Use hex code directly

    # Apply Polybar configuration
    run_with_check "cp ~/.config/polybar/themes/config-everforest ~/.config/polybar/config.ini" "Copying Polybar config for Everforest"
    run_with_check "polybar-msg cmd restart" "Please"

    run_with_check "change_color"

    # Apply Polybar configuration
    run_with_check "cp ~/.config/polybar/themes/config-everforest ~/.config/polybar/config.ini" "Copying Polybar config for EverfOREST"
    run_with_check "polybar-msg cmd restart" "Please I HAVE TO DO IT Again"

    # shhhhh
    run_with_check "killall -g legcord"
    sleep 1
    run_with_check "vesktop"
    sleep 3
    run_with_check "pkill legcord"
    sleep 3
    run_with_check "pkill legcord"
    sleep 3
    run_with_check "pkill legcord"


else
    # Invalid or no option provided
    cat << _EOF_
No option specified, available options:
--default    --nord    --gruvbox    --dark    --cherry    --everforest    --catppuccin
_EOF_
fi
