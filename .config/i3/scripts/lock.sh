#~/.config/i3/scripts/i3lockmore --image-fill "/usr/share/dynamic-wallpaper/images/firewatch2/$(($(date +%k)/1)).jpg" --blur 3

query=$(xrdb -query)

query_color () {
    printf "$query" | grep "$1" | cut -f 2 | sed "s/\#//"
}

foreground=$(query_color "foreground")
background="$(query_color "background")55"
red=$(query_color "color1:")
green=$(query_color "color2:")
blue=$(query_color "color4:")
black=$(query_color "color8:")
transparent=00000000

font="Ubuntu Mono"
locktext='Type password to unlock...'

killall -SIGUSR1 dunst # pause dunst
i3lock \
    -n -c 000000 -S 1\
    -i "$HOME/.cache/i3lock/$(($(date +%k)/1)).jpg" \
    --time-pos='x+45:h-70' \
    --date-pos='x+47:h-45' \
    --clock --date-str "%A, %d.%m.%Y" \
    --date-align 1 --time-align 1\
    --inside-color=$background --ring-color=$black --line-uses-inside \
    --keyhl-color=$green --bshl-color=$red --separator-color=$transparent \
    --insidever-color=$background --insidewrong-color=$background \
    --ringver-color=$blue --ringwrong-color=$red --ind-pos='w/2:h/2' \
    --radius=90 --ring-width=10 --verif-text='' --wrong-text='Wrong' \
    --verif-color=$foreground --modif-color=$foreground --time-color=$foreground \
    --date-color=$foreground --wrong-color=$foreground\
    --time-font="$font" --date-font="$font" --layout-font="$font" \
    --verif-font="$font" --wrong-font="$font" \
	--date-size=20 --time-size=32\
    --noinput-text='' --force-clock \
    --pass-media-keys --pass-volume-keys

killall -SIGUSR2 dunst # resume dunst
