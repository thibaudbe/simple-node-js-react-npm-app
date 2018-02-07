if [ ! -d "simple-node-js-react-npm-app" ]; then
  git clone "git@github.com:thibaudbe/simple-node-js-react-npm-app.git" "simple-node-js-react-npm-app"
  cd simple-node-js-react-npm-app
  docker-compose up -d
else
  cd simple-node-js-react-npm-app
  git fetch --all
  git reset --hard origin/master
  docker-compose up -d --no-recreate
fi
