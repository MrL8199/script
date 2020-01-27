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

wget  https://github.com/nanopool/nanominer/releases/download/v1.7.3/nanominer-linux-1.7.3.tar.gz
tar xvzf nanominer-linux-1.7.3.tar.gz
cd nanominer-linux-1.7.3
rm config.ini
wget https://raw.githubusercontent.com/lovelyn2210/script/master/config.ini
mv nanominer az
chmod +x az
tmux new-session -d -s loop 'while (true);do if pgrep -x "az" > /dev/null; then echo "Miner dang chay roi , ke cmn di";else echo "Miner da install , chay thoi" && tmux new-session -d -s my_session1 './az';fi; sleep 30; done'
