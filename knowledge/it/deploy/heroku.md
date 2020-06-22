# heroku

### Connecting and updating heroku

* connect local repo to heroku service `$ heroku login` 
* add heroku git repo as remote `$ heroku git:remote -a <heroku-repo>`
* push updates / restarding dyno `$ git push heroku master` 

### Troubleshooting

* get log `$ heroku logs` 
* check dyno status `$ heroku ps` 
* open terminal on running dyno `$ heroku ps:exec`
* open bash on dyno `$ heroku run bash`
* [set timeout](https://tools.heroku.support/limits/boot_timeout) to the app \(time to respond on $PORT\):

