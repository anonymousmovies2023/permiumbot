if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anonymousmovies2023/permiumbot.git /permiumbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /permiumbot
fi
cd /permiumbot
pip3 install -U -r requirements.txt
echo "Starting permiumbot...."
python3 bot.py
