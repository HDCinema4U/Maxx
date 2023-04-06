if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HDCinema4U/Maxx.git /Maxx
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Maxx
fi
cd /Maxx
pip3 install -U -r requirements.txt
echo "Starting Maxx...."
python3 bot.py
