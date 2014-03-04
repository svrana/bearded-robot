namespace :console do
  desc 'Run a pry console'
  task :pry do
    require 'pry'

    Pry.start
  end
end
