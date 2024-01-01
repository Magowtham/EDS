

	checkHealth() {

	local url=$1;

	response=$(curl -s "$url");

	if [ $? -eq 0 ]; then
	 local totalMemory=$(echo "$response" | jq -r '.totalMemory');
	 local freeMemory=$(echo "$response" | jq -r '.availableMemory');
	 
	 local freeMemoryPercent=$(awk "BEGIN {printf \"%.2f\",${freeMemory}/${totalMemory}*100}");
	 echo $freeMemoryPercent;
	else
	 echo -1;
	 fi
	}
	 
	root1Memory=$(checkHealth "http://192.168.159.254:8000");

	root1Int=$(awk "BEGIN {printf int($root1Memory)}");

	if [ $root1Int -gt 60 ];then
	 ssh -i "test.pem" edwin@192.168.159.254
	else
	echo "sorry system is busy";
	exit
	fi


	echo "$root1Memory%"
