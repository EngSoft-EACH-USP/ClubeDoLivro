require 'rspec/core/rake_task'

require File.expand_path('../config/application', __FILE__)
Rails.application.load_tasks

RSpec::Core::RakeTask.new

task :default => :spec
task :features => :spec