COL_NC='\e[0m'
COL_LIGHT_GREEN='\e[1;32m'
COL_LIGHT_RED='\e[1;31m'
TICK="[${COL_LIGHT_GREEN}✓${COL_NC}]"
CROSS="[${COL_LIGHT_RED}✗${COL_NC}]"
DONE="${COL_LIGHT_GREEN} done!${COL_NC}"
I="[info]"

cd ~
set -e
GIT_1=`git clone https://github.com/PaulCreaser/rpi-i2s-audio.git`
