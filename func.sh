tput setaf 2
echo "Good Morning Amar "
tput setaf 7
. a
alias f='function'
alias gr='tput setaf 2'
alias wh='tput setaf 7'
alias cont='termux-contact-list'
alias bs='termux-battery-status'
alias sp='termux-tts-speak'
alias not='termux-notification'
alias vib='termux-vibrate'
alias dia='termux-dialog'
alias down='termux-download'
alias gs='git status'

f fn { gr ; cat /data/data/com.termux/files/home/func.sh | egrep "f $1| alias $1" ; wh ; }
f bsp { bs | grep percentage | awk '{print $2}' | cut -d, -f1 ; }

f checklow { a=`bsp` ; b=`echo $a-1|bc -l` ; if [[ $b < "40" ]]; then sp " your battery going to die   and it is bloody `bsp` percentage remain "; fi ; }

f checkhigh {  a=`bsp` ; b=`echo $a-1|bc -l` ; if [[ $b > "97" ]]; then  sp " your battery fully charged   and it is  `bsp` percentage now  "; fi ; }

f ck { c | grep -i -A 1 $1 ; }
f ckl { c | grep -i -B 1 $1 ; }
f K { a=`dia -t " Enter a no. that u know"` ; ckl $a ;}
f k { a=`dia -t "whos no. u want"` ; ck $a ;  }

f kl { a=`jobs -l | grep BatteryStatusLow.sh | awk '{print $2}'` ; kill $a ; }
f kh { a=`jobs -l | grep BatteryStatusHigh.sh | awk '{print $2}'` ; kill $a ; }
f u { rm -rf /sdcard/Android/data/com.utorrent.client /sdcard/Android/data/com.mxtech.videoplayer.ad/ ; }
f gc { git commit -am $1 ; }

