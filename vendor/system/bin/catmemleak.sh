#!/system/bin/sh 

KMEMLEAK_FILE=/sys/kernel/debug/kmemleak
KMEMLEAK_LOGDIR=/data/kmemleak_logs
duration=$1

if [ 0 -eq ${duration} ];then
   duration=10800s
fi
echo "check kmemleak exist"

if [ ! -f ${KMEMLEAK_FILE} ];then
   echo "kmemleak disabled,exit now"
   exit 1
fi

echo "kmemleak enabled"

rm -Rf ${KMEMLEAK_LOGDIR}
mkdir -p ${KMEMLEAK_LOGDIR}

count=0
echo clear > ${KMEMLEAK_FILE}
echo scan > ${KMEMLEAK_FILE}

#clear file
while [ "1" ]
do
	
	sleep ${duration}
	cat /proc/meminfo >${KMEMLEAK_LOGDIR}/kmemleak_log_${count}
	echo "####################" >>${KMEMLEAK_LOGDIR}/kmemleak_log_${count}
	cat /proc/pagetypeinfo >>${KMEMLEAK_LOGDIR}/kmemleak_log_${count}
	echo "####################" >>${KMEMLEAK_LOGDIR}/kmemleak_log_${count}
	echo "read kmemleak"
	cat ${KMEMLEAK_FILE}>>${KMEMLEAK_LOGDIR}/kmemleak_log_${count}
	
	let "count++"
done
