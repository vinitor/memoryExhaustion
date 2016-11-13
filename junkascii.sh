   clear
ddname () {
   JUNK="`cat<<EOM
   $JUNK_NAME
   I\n
EOM`"

echo $JUNK
}
#
JUNK_NAME="[..start..................]"
ddname
JUNK_NAME="XXXX"
ddname
JUNK_NAME="[..stop..................]"
ddname
echo "hist <CR> to exit, Y to run again"
echo "$$.`date +%S`"
read ans
[ -z "$ans" ] &&  sh ./$0
