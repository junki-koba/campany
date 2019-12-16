git clone https://github.com/exp-drill/pictweet_exam1
cd pictweet_exam1
bundle install
bundle exec rake db:drop # 2回目以降の試験実施の際はこちらのコマンドを実行する（前回実施分のDBを消すためです）
bundle exec rake db:create
bundle exec rake db:migrate