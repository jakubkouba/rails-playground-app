# config valid for current version and patch releases of Capistrano
lock "~> 3.19.1"

set :application, 'rails-playground'
set :repo_url, 'git@github.com-rails-playground-app:jakubkouba/rails-playground-app.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, 'main'
set :deploy_to, '/home/git/apps/rails-playground'
set :linked_dirs, %w[tmp/pids tmp/sockets log]
set :rvm_type, :user
set :rvm_ruby_version, File.read(File.expand_path('../.ruby-version', __dir__)).strip.split('-').last
set :rvm_role, :app
set :assets_roles, :app

server 'fortyunbroken.com',
  user: 'git',
  roles: %w[app],
  primary: true,
  ssh_options: {
    port: 22,
    keys: ENV['PRIVATE_KEY_PATH'],
    forward_agent: false
  }

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
