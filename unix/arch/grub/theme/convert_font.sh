input=./fonts/Josefin_Sans_Regular.ttf
output=./lvd/Josefin_Sans_Regular.pf2

echo "$input ----> $output"
grub-mkfont --output=$output --size=64 $input
echo "done"