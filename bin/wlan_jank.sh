read -p "If you aren't a 100% certain, type anything but 'yes': "  reply

bold=$(tput bold)
normal=$(tput sgr0)

if [ "$reply" != "yes" ]; then
    echo "A wise choise, ${bold}NOT${normal} starting wpa_supplicant"
    exit
fi

echo "May god have mercy on your soul"
echo "Starting wpa_supplicant"

sudo wpa_supplicant -B -D wext -i wlp2s0 -c /etc/wpa_supplicant.conf
sudo dhclient

