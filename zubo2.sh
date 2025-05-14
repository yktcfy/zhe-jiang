#pwd
if [ $# -eq 0 ]; then
  echo "请选择城市："
  echo "1. 天津（Tianjin_liantong）"
  echo "2. 浙江（Zhejiang_dianxin）"
  echo "3. 北京（Beijing_liantong）"
  echo "4. 上海（Shanghai_dianxin）"
  echo "5. 广东（Guangdong_dianxin）"
  echo "6. 江苏（Jiangsu_dianxin）"
  echo "7. 安徽（Anhui_dianxin）"
  echo "8. 湖北（Hubei_dianxin）"
  echo "9. 重庆（Chongqing_liantong）"
  echo "10. 湖南（Hunan_dianxin）"
  echo "11. 河南（Henan_liantong）"
  echo "12. 河北（Hebei_liantong）"
  echo "13. KR（KR_SK）"
  echo "0. 全部"
  read -t 10 -p "输入选择或在10秒内无输入将默认选择全部: " city_choice

  if [ -z "$city_choice" ]; then
      echo "未检测到输入，自动选择全部选项..."
      city_choice=0
  fi

else
  city_choice=$1
fi

# 根据用户选择设置城市和相应的stream
case $city_choice in
    1)
        city="Tianjin_liantong"
        stream="rtp/225.1.1.149:5002"
	channel_key="天津"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Tianjin" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJUaWFuamluIiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://foo.yangfeiyue.dpdns.org/Tianjin_liantong.txt"$url_fofa
        ;;
    2)
        city="Zhejiang_dianxin"
        stream="rtp/233.50.201.136:5140"
        channel_key="浙江"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Zhejiang" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJaaGVqaWFuZyIgJiYgb3JnPSJDaGluYW5ldCIgJiYgcHJvdG9jb2w9Imh0dHAi&page_size=20"$url_fofa
        url_fofa="https://foo.yangfeiyue.dpdns.org/Zhejiang_dianxin.txt"$url_fofa
        ;;
    3)
        city="Beijing_liantong"
        stream="rtp/239.3.1.250:8001"
        channel_key="北京"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Beijing" && org="China Unicom Beijing Province Network" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJCZWlqaW5nIiAmJiBvcmc9IkNoaW5hIFVuaWNvbSBCZWlqaW5nIFByb3ZpbmNlIE5ldHdvcmsiICYmIHByb3RvY29sPSJodHRwIg%3D
        url_fofa="https://foo.yangfeiyue.dpdns.org/Beijing_liantong.txt"$url_fofa
        ;;
    4)
        city="Shanghai_dianxin"
        stream="rtp/239.45.3.237:5140"
        channel_key="上海"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Shanghai" && org="China Telecom Group" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJTaGFuZ2hhaSIgJiYgb3JnPSJDaGluYSBUZWxlY29tIEdyb3VwIiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://foo.yangfeiyue.dpdns.org/Shanghai_dianxin.txt"$url_fofa
        ;;
    5)
        city="Guangdong_dianxin"
        stream="rtp/239.77.0.217:5146"
        channel_key="广东"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJHdWFuZ2RvbmciICYmIG9yZz0iQ2hpbmFuZXQiICYmIHByb3RvY29sPSJodHRwIg%3D%3D&page_size=20"$url_fofa
        url_fofa="https://foo.yangfeiyue.dpdns.org/Guangdong_dianxin.txt"$url_fofa
        ;;
    6)
        city="Jiangsu_dianxin"
        stream="rtp/239.49.8.118:8000"
        channel_key="江苏"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Jiangsu" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJKaWFuZ3N1IiAmJiBvcmc9IkNoaW5hbmV0IiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://faa.yangfeiyue.dpdns.org/Jiangsu_dianxin.txt"$url_fofa
        ;;
    7)
        city="Anhui_dianxin"
        stream="rtp/238.1.79.42:4448"
        channel_key="安徽"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Anhui" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJBbmh1aSIgJiYgb3JnPSJDaGluYW5ldCIgJiYgcHJvdG9jb2w9Imh0dHAi&page_size=20"$url_fofa
        url_fofa="https://faa.yangfeiyue.dpdns.org/Anhui_dianxin.txt"$url_fofa
        ;;
    8)
        city="Hubei_dianxin"
        stream="rtp/239.69.1.204:10866"
        channel_key="湖北"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Hubei" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJIdWJlaSIgJiYgb3JnPSJDaGluYW5ldCIgJiYgcHJvdG9jb2w9Imh0dHAi&page_size=20"$url_fofa
        url_fofa="https://faa.yangfeiyue.dpdns.org/Hubei_dianxin.txt"$url_fofa
        ;;
    9)
        city="Chongqing_liantong"
        stream="rtp/225.0.4.192:7980"
        channel_key="重庆"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Chongqing" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJDaG9uZ3FpbmciICYmIG9yZz0iQ0hJTkEgVU5JQ09NIENoaW5hMTY5IEJhY2tib25lIiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://faa.yangfeiyue.dpdns.org/Chongqing_liantong.txt"$url_fofa
        ;;
    10)
        city="Hunan_dianxin"
        stream="rtp/239.76.245.119:1234"
        channel_key="湖南"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Hunan" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJIdW5hbiIgJiYgb3JnPSJDaGluYW5ldCIgJiYgcHJvdG9jb2w9Imh0dHAi&page_size=20"$url_fofa
        url_fofa="https://faa.yangfeiyue.dpdns.org/Hunan_dianxin.txt"$url_fofa
        ;;
    11)
        city="Henan_liantong"
        stream="rtp/225.1.4.55:1084"
        channel_key="河南"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Henan" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJIZW5hbiIgJiYgb3JnPSJDSElOQSBVTklDT00gQ2hpbmExNjkgQmFja2JvbmUiICYmIHByb3RvY29sPSJodHRwIg%3D%3D&page_size=20"$url_fofa
        url_fofa="https://fuu.yangfeiyue.dpdns.org/Henan_liantong.txt"$url_fofa
        ;;
    12)
        city="Hebei_liantong"
        stream="rtp/239.253.92.173:6003"
        channel_key="河北"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Hebei" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJIZWJlaSIgJiYgb3JnPSJDSElOQSBVTklDT00gQ2hpbmExNjkgQmFja2JvbmUiICYmIHByb3RvY29sPSJodHRwIg%3D%3D&page_size=20"$url_fofa
        url_fofa="https://fuu.yangfeiyue.dpdns.org/Hebei_liantong.txt"$url_fofa
        ;;
    13)
        city="KR_SK"
        stream="udp/239.192.67.228:49220"
        channel_key="KR"
#        url_fofa=$(echo  '"udpxy" && country="KR" && org="SK Broadband Co Ltd" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJLUiIgJiYgb3JnPSJTSyBCcm9hZGJhbmQgQ28gTHRkIiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://lii.yangfeiyue.dpdns.org/KR_SK.txt"$url_fofa
        ;;
    0)
        # 如果选择是“全部选项”，则逐个处理每个选项
        for option in {1..20}; do
          bash  "$0" $option  # 假定fofa.sh是当前脚本的文件名，$option将递归调用
        done
        exit 0
        ;;

    *)
        echo "错误：无效的选择。"
        exit 1
        ;;
esac

# 使用城市名作为默认文件名，格式为 CityName.ip
time=$(date +%m%d%H%M)
ipfile=ip/${city}_ip.txt
good_ip=ip/good_${city}_ip.txt
result_ip=ip/result_${city}_ip.txt
echo "======== 开始检索 ${city} ========"
#echo "从 fofa 获取ip+端口"
#curl -o test.html $url_fofa
#grep -E '^\s*[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+$' test.html | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+' > tmp_ipfile
echo "从 '${ipfile}' 读取ip并添加到检测列表"
cat $ipfile >> tmp_ipfile
sort tmp_ipfile | uniq | sed '/^\s*$/d' > $ipfile
rm -f tmp_ipfile

while IFS= read -r ip; do
    # 尝试连接 IP 地址和端口号，并将输出保存到变量中
    tmp_ip=$(echo -n "$ip" | sed 's/:/ /')
    output=$(nc -w 1 -v -z $tmp_ip 2>&1)
    # 如果连接成功，且输出包含 "succeeded"，则将结果保存到输出文件中
    if [[ $output == *"succeeded"* ]]; then
        # 使用 awk 提取 IP 地址和端口号对应的字符串，并保存到输出文件中
        echo "$output" | grep "succeeded" | awk -v ip="$ip" '{print ip}' >> $good_ip
    fi
done < $ipfile
lines=$(wc -l < $good_ip)
echo "连接成功 $lines 个,开始测速······"
i=0
while read line; do
    i=$((i + 1))
    ip=$line
    url="http://$ip/$stream"
    #echo $url
    curl $url --connect-timeout 5 --max-time 60 -o /dev/null >zubo.tmp 2>&1
    a=$(head -n 3 zubo.tmp | awk '{print $NF}' | tail -n 1)  
    echo "第$i/$lines个：$ip    $a"
    echo "$ip    $a" >> speedtest_${city}_$time.log
done < $good_ip
#cat $good_ip > $ipfile
rm -rf zubo.tmp $ipfile $good_ip

echo "测速结果排序"
awk '/M|k/{print $2"  "$1}' speedtest_${city}_$time.log | sort -n -r > $result_ip
cat $result_ip
ip1=$(awk 'NR==1{print $2}' $result_ip)
ip2=$(awk 'NR==2{print $2}' $result_ip)
ip3=$(awk 'NR==3{print $2}' $result_ip)
rm -f speedtest_${city}_$time.log $result_ip    
# 用 3 个最快 ip 生成对应城市的 txt 文件
program=template/template_${city}.txt
sed "s/ipipip/$ip1/g" $program > tmp_1.txt
sed "s/ipipip/$ip2/g" $program > tmp_2.txt
sed "s/ipipip/$ip3/g" $program > tmp_3.txt
echo "${city}-组播1,#genre#" > tmp_all.txt
cat tmp_1.txt >> tmp_all.txt
echo "${city}-组播2,#genre#" >> tmp_all.txt
cat tmp_2.txt >> tmp_all.txt
echo "${city}-组播3,#genre#" >> tmp_all.txt
cat tmp_3.txt >> tmp_all.txt
grep -vE '/{3}' tmp_all.txt > "txt/${city}.txt"
rm -f tmp_1.txt tmp_2.txt tmp_3.txt tmp_all.txt
echo "${city} 测试完成，生成可用文件：'txt/${city}.txt'"
#--------------------合并所有城市的txt文件为:   zubo.txt-----------------------------------------

echo "天津,#genre#" >zubo.txt
cat txt/Tianjin_liantong.txt >>zubo.txt
echo "浙江,#genre#" >>zubo.txt
cat txt/Zhejiang_dianxin.txt >>zubo.txt
echo "北京,#genre#" >>zubo.txt
cat txt/Beijing_liantong.txt >>zubo.txt
echo "上海,#genre#" >>zubo.txt
cat txt/Shanghai_dianxin.txt >>zubo.txt
echo "广东,#genre#" >>zubo.txt
cat txt/Guangdong_dianxin.txt >>zubo.txt
echo "江苏,#genre#" >>zubo.txt
cat txt/Jiangsu_dianxin.txt >>zubo.txt
echo "安徽,#genre#" >>zubo.txt
cat txt/Anhui_dianxin.txt >>zubo.txt
echo "湖北,#genre#" >>zubo.txt
cat txt/Hubei_dianxin.txt >>zubo.txt
echo "重庆,#genre#" >>zubo.txt
cat txt/Chongqing_liantong.txt >>zubo.txt
echo "湖南,#genre#" >>zubo.txt
cat txt/Hunan_dianxin.txt >>zubo.txt
echo "河南,#genre#" >>zubo.txt
cat txt/Henan_liantong.txt >>zubo.txt
echo "河北,#genre#" >>zubo.txt
cat txt/Hebei_liantong.txt >>zubo.txt
echo "KR,#genre#" >>zubo.txt
cat txt/KR_SK.txt >>zubo.txt


for a in result/*.txt; do echo "";echo "========================= $(basename "$a") ==================================="; cat $a; done

