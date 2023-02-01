for i in {1..255}
do
  ping -c 1 10.12.13.5.$i &> /dev/null
  if [ $? -eq 0 ]; then
    echo "10.12.13.5.$i est en ligne" >> online.txt
  else
    echo "10.12.13.5.$i est hors ligne" >> offline.txt
  fi
done