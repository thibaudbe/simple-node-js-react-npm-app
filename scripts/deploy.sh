if [ ! -d "$FOLDER" ]; then
  git clone "$REPO_URL" "$FOLDER"
  cd $FOLDER
  docker-compose up
else
  cd $FOLDER
  git fetch --all
  git reset --hard origin/master
  docker-compose restart
fi
