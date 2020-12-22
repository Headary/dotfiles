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

loginbox=000000ff
font="Ubuntu Mono"
locktext='Type password to unlock...'

i3lock \
    -n -t -c 000000 \
    -i "$HOME/.cache/i3lock/$(($(date +%k)/1)).jpg" \
    --timepos='x+45:h-70' \
    --datepos='x+47:h-45' \
    --clock  --datestr "%A, %d.%m.%Y" \
    --date-align 1 --time-align 1\
    --insidecolor=$background --ringcolor=$black --line-uses-inside \
    --keyhlcolor=$green --bshlcolor=$red --separatorcolor=$transparent \
    --insidevercolor=$background --insidewrongcolor=$background \
    --ringvercolor=$blue --ringwrongcolor=$red --indpos='w/2:h/2' \
    --radius=90 --ring-width=10 --veriftext='' --wrongtext='Wrong' \
    --verifcolor=$foreground --timecolor=$foreground \
    --datecolor=$foreground --wrongcolor=$foreground\
    --time-font="$font" --date-font="$font" --layout-font="$font" \
    --verif-font="$font" --wrong-font="$font" \
    --noinputtext='' --force-clock \
    --pass-media-keys --pass-volume-keys
