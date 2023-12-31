if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gowdru123/huli.git /huli
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /huli
cd /huli
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
