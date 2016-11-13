#! /bin/bash
#
rm /tmp/junk.txt
#
SEQ="01 02 03 04 05 66 77 88 901"
ENV="prod test uat dev qa"
APP="db app ntwk gui tools"
MID='"- X - 9 15" "X X X 15 27" "X - - 15 15" "X - X 9 52" "- - - 9 27 "'

			datum1="- X - 9 15" 
			datum2="X X X 15 27" 
			datum3="X - - 15 15" 
			datum4="X - X 9 52" 
			datum5="- - - 9 27 "
for seq in ${SEQ}; do
	for env in ${ENV}; do
		for app in ${APP}; do
			datum=${datum1}
				echo "srv-${app}-${seq} ${env} ${app} ${datum}"
			datum1=$datum2
			datum2=$datum3
			datum3=$datum4
			datum4=$datum5
			datum5=$datum1
		done
	done
#done  | sort -u -k 1,2  | tee -a  /tmp/junk.txt
done  |  tee -a  /tmp/junk.txt
