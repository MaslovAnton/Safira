$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Для работы rvm
#require 'rvm/capistrano' # Для работы rvm

set :default_environment, {
  'PATH' => "/home/hosting_maslov/.rvm/gems/ruby-1.9.2-p290/bin:/home/hosting_maslov/.rvm/bin:/home/hosting_maslov/.rvm/ree-1.8.7-2009.10/bin:$PATH",
  'RUBY_VERSION' => 'ruby 1.8.7',
  'GEM_HOME'     => '/home/hosting_maslov/.rvm/gems/ruby-1.9.2-p290',
  'GEM_PATH'     => '/home/hosting_maslov/.rvm/gems/ruby-1.9.2-p290',
  'BUNDLE_PATH'  => '/home/hosting_maslov/.rvm/gems/ruby-1.9.2-p290'  # If you are using bundler.
}

# _your_login_ - Поменять на ваш логин в панели управления
# _your_project_ - Поменять на имя вашего проекта
# _your_server_ - Поменять на имя вашего сервера (Указано на вкладке "FTP и SSH" вашей панели управления)
# set :repository - Установить расположение вашего репозитория
# У вас должна быть настроена авторизация ssh по сертификатам

set :application, "safira"
set :repository,  "git@github.com:MaslovAnton/Safira.git"

dpath = "/home/hosting_maslov/projects/safira7"

set :user, "hosting_maslov"
set :use_sudo, false
set :deploy_to, dpath

set :scm, :git

role :web, "lithium.locum.ru"                          # Your HTTP server, Apache/etc
role :app, "lithium.locum.ru"                          # This may be the same as your `Web` server
role :db,  "lithium.locum.ru", :primary => true # This is where Rails migrations will run

after "deploy:update_code", :copy_database_config

task :copy_database_config, roles => :app do
  db_config = "#{shared_path}/database.yml"
  run "cp #{db_config} #{release_path}/config/database.yml"
end

set :unicorn_rails, "/var/lib/gems/1.8/bin/unicorn_rails"
set :unicorn_conf, "/etc/unicorn/safira7.maslov.rb"
set :unicorn_pid, "/var/run/unicorn/safira7.maslov.pid"

# - for unicorn - #
namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run "#{unicorn_rails} -Dc #{unicorn_conf}"
  end

  desc "Stop application"
  task :stop, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_rails} -Dc #{unicorn_conf}"
  end
end

