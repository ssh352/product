#!/bin/bash
DAY_NIGHT=night

function encrypt_so
{
	rm ./lib/packaged/*.so
	rm ./lib/packaged/*
	for cur_so in `ls  ./lib/bare/`
	do
		echo "process ${cur_so}"
		tar -czvf - -C ./lib/bare ${cur_so} | openssl des3 -salt -k 617999 -out ./lib/packaged/${cur_so}  
	done

}

function upload_files
{
###################
# explore
###############
	# 910019
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night_910019/x-shfe/*night.so'
	scp -P 44163 ./lib/packaged/st*_night.so	u910019@101.231.3.117:/home/u910019/trade/night_910019/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night_910019/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night_910019/x-shfe/tools/
	scp -P 44163 ./19/*.csv			u910019@101.231.3.117:/home/u910019/trade/night_910019/x-shfe/
	scp -P 44163 ./19/*.csv			u910019@101.231.3.117:/home/u910019/trade/night_910019/x-shfe/tools/
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night_910019/x-shfe/tools/*.log'
	ssh -p 44163						u910019@101.231.3.117 '/home/u910019/trade/night_910019/x-shfe/tools/configurator.py'
	scp -P 44163						u910019@101.231.3.117:/home/u910019/trade/night_910019/x-shfe/tools/configurator.log ./
	cat ./configurator.log

	# 910063
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night_910063/x-shfe/*night.so'
	scp -P 44163 ./lib/packaged/st*_night.so	u910019@101.231.3.117:/home/u910019/trade/night_910063/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night_910063/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night_910063/x-shfe/tools/
	scp -P 44163 ./63/*.csv			u910019@101.231.3.117:/home/u910019/trade/night_910063/x-shfe/
	scp -P 44163 ./63/*.csv			u910019@101.231.3.117:/home/u910019/trade/night_910063/x-shfe/tools/
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night_910063/x-shfe/tools/*.log'
	ssh -p 44163						u910019@101.231.3.117 '/home/u910019/trade/night_910063/x-shfe/tools/configurator.py'
	scp -P 44163						u910019@101.231.3.117:/home/u910019/trade/night_910063/x-shfe/tools/configurator.log ./
	cat ./configurator.log

	# 910109
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night109/x-shfe/*night.so'
	scp -P 44163 ./lib/packaged/st*_night.so	u910019@101.231.3.117:/home/u910019/trade/night109/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night109/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night109/x-shfe/tools/
	scp -P 44163 ./109/*.csv			u910019@101.231.3.117:/home/u910019/trade/night109/x-shfe/
	scp -P 44163 ./109/*.csv			u910019@101.231.3.117:/home/u910019/trade/night109/x-shfe/tools/
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night109/x-shfe/tools/*.log'
	ssh -p 44163						u910019@101.231.3.117 '/home/u910019/trade/night109/x-shfe/tools/configurator.py'
	scp -P 44163						u910019@101.231.3.117:/home/u910019/trade/night109/x-shfe/tools/configurator.log ./
	cat ./configurator.log

	# 910056
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night056/x-shfe/*night.so'
	scp -P 44163 ./lib/packaged/st*_night.so	u910019@101.231.3.117:/home/u910019/trade/night056/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night056/x-shfe/
	scp -P 44163 ./ev/st.txt	u910019@101.231.3.117:/home/u910019/trade/night056/x-shfe/tools/
	scp -P 44163 ./056/*.csv			u910019@101.231.3.117:/home/u910019/trade/night056/x-shfe/
	scp -P 44163 ./056/*.csv			u910019@101.231.3.117:/home/u910019/trade/night056/x-shfe/tools/
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/trade/night056/x-shfe/tools/*.log'
	ssh -p 44163						u910019@101.231.3.117 '/home/u910019/trade/night056/x-shfe/tools/configurator.py'
	scp -P 44163						u910019@101.231.3.117:/home/u910019/trade/night056/x-shfe/tools/configurator.log ./
	cat ./configurator.log

#########################
# winfund
###################
	# 910229
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/myfund/night229/x-shfe/*night.so'
	scp -P 44163 ./lib/packaged/*.so	u910019@101.231.3.117:/home/u910019/myfund/night229/x-shfe/
	scp -P 44163 ./ev/*.txt	u910019@101.231.3.117:/home/u910019/myfund/night229/x-shfe/
	scp -P 44163 ./ev/*.txt	u910019@101.231.3.117:/home/u910019/myfund/night229/x-shfe/tools/
	scp -P 44163 ./229/*.csv			u910019@101.231.3.117:/home/u910019/myfund/night229/x-shfe/
	scp -P 44163 ./229/*.csv			u910019@101.231.3.117:/home/u910019/myfund/night229/x-shfe/tools/
	ssh -p 44163						u910019@101.231.3.117 'rm /home/u910019/myfund/night229/x-shfe/tools/*.log'
	ssh -p 44163						u910019@101.231.3.117 '/home/u910019/myfund/night229/x-shfe/tools/configurator.py'
	scp -P 44163						u910019@101.231.3.117:/home/u910019/myfund/night229/x-shfe/tools/configurator.log ./
	cat ./configurator.log
}

###################
# enter working directory
###########################
function  enter_wd
{
	 this_dir=`pwd`
	 dirname $0|grep "^/" >/dev/null
	 if [ $? -eq 0 ];then
			 this_dir=`dirname $0`
	 else
			 dirname $0|grep "^\." >/dev/null
			 retval=$?
			 if [ $retval -eq 0 ];then
					 this_dir=`dirname $0|sed "s#^.#$this_dir#"`
			 else
					 this_dir=`dirname $0|sed "s#^#$this_dir/#"`
			 fi
	 fi

	cd $this_dir
}

enter_wd
encrypt_so
upload_files
