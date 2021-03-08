##### $1 is main link and $2 is course name
mkdir $2 ; cd $2 ;

wget $1
main_file=`ls | grep .asp$`
cat $main_file | grep $2 | grep href| grep asp |cut -d'"' -f2 | sort | uniq > links

for  i  in `cat links` ; do wget $i ; done

for topic in `ls| grep .asp$` ; do echo "$topic, `cat $topic | grep player.vimeo.com | cut -d'/' -f5 | cut -d'?' -f1`" ; done > topic_ID
for i in `ls | grep .asp$` ; do rm -f $i ; done

echo
echo topic_ID

echo
