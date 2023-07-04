if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anonymousmovies2023/permiumbot.git /premiumBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /permiumBot
fi
cd /premiumBot
pip3 install -U -r requirements.txt
echo "Starting permiumbot...."
python3 bot.py
