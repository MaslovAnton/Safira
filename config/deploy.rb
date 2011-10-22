$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Для работы rvm
require 'rvm/capistrano' # Для работы rvm
#require 'bundler/capistrano' # Для работы bundler. При изменении гемов bundler автоматически обновит все гемы на сервере, чтобы они в точности соответствовали гемам разработчика.

set :using_rvm, true
set :rvm_ruby_string, 'ree@safira'

set :application, "safira"
set :rails_env, "production"
set :domain, "antonio@188.127.249.141" # Это необходимо для деплоя через ssh. Именно ради этого я настоятельно советовал сразу же залить на сервер свой ключ, чтобы не вводить паролей.
set :deploy_to, "/srv/#{application}"
set :use_sudo, false
set :unicorn_conf, "#{deploy_to}/current/config/unicorn.rb"
set :unicorn_pid, "#{deploy_to}/shared/pids/unicorn.pid"


set :rvm_type, :user # Указывает на то, что мы будем использовать rvm, установленный у пользователя, от которого происходит деплой, а не системный rvm.

set :scm, :git # Используем git. Можно, конечно, использовать что-нибудь другое - svn, например, но общая рекомендация для всех кто не использует git - используйте git.
set :repository,  "git@github.com:MaslovAnton/Safira.git" # Путь до вашего репозитария. Кстати, забор кода с него происходит уже не от вас, а от сервера, поэтому стоит создать пару rsa ключей на сервере и добавить их в deployment keys в настройках репозитария.
set :branch, "master" # Ветка из которой будем тянуть код для деплоя.
set :deploy_via, :remote_cache # Указание на то, что стоит хранить кеш репозитария локально и с каждым деплоем лишь подтягивать произведенные изменения. Очень актуально для больших и тяжелых репозитариев.

role :web, "188.127.249.141"
role :app, "188.127.249.141"
role :db,  "188.127.249.141" , :primary => true

after 'deploy:update_code', :roles => :app do
  # Здесь для примера вставлен только один конфиг с приватными данными - database.yml. Обычно для таких вещей создают папку /srv/myapp/shared/config и кладут файлы туда. При каждом деплое создаются ссылки на них в нужные места приложения.
  run "rm -f #{current_release}/config/database.yml"
  run "ln -s #{deploy_to}/shared/config/database.yml #{current_release}/config/database.yml"
end

# Далее идут правила для перезапуска unicorn. Их стоит просто принять на веру - они работают.
namespace :deploy do
  task :restart do
    run "if [ -f #{unicorn_pid} ]; then kill -USR2 `cat #{unicorn_pid}`; else cd #{deploy_to}/current && bundle exec unicorn_rails -c #{unicorn_conf} -E #{rails_env} -D; fi"
  end
  task :start do
    run "bundle exec unicorn_rails -c #{unicorn_conf} -E #{rails_env} -D"
  end
  task :stop do
    run "if [ -f #{unicorn_pid} ]; then kill -QUIT `cat #{unicorn_pid}`; fi"
  end
end

desc "Symlink Assets/Uploads"
 task :symlink_assets, :roles => :app do
   run "rm -r #{release_path}/public/assets"
   run "ln -s #{shared_path}/assets #{release_path}/public/assets"
 end  

#set :default_environment, {
# 'PATH' => "/path/to/.rvm/gems/ruby-1.9.2-p290/bin:/path/to/.rvm/bin:/path/to/.rvm/ruby-1.9.2-p290/bin:$PATH",
#  'RUBY_VERSION' => 'ruby 1.8.7',
#  'GEM_HOME'     => '/path/to/.rvm/gems/ruby-1.9.2-p290',
#  'GEM_PATH'     => '/path/to/.rvm/gems/ruby-1.9.2-p290',
# 'BUNDLE_PATH'  => '/path/to/.rvm/gems/ruby-1.9.2-p290'  # If you are using bundler.
#}

#кole :web, "lithium.locum.ru"                          # Your HTTP server, Apache/etc
#role :app, "lithium.locum.ru"                          # This may be the same as your `Web` server
#role :db,  "lithium.locum.ru", :primary => true # This is where Rails migrations will run

