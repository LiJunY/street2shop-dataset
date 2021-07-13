root==$1


for line in `cat $1`
do
echo $line
name=`echo  $line |awk -F  ',' '{print $1}'`
url=`echo  $line |awk -F  ',' '{print $2}'`
echo $dd

wget -P /data/lijun.ylj/data/Fashion/street2shop-dataset/images  -O  $name".jpg"  $url
done
