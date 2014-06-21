# encoding: utf-8
require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name        = "rails_request_id"
  gem.homepage    = "http://github.com/techthumb/rails_request_id"
  gem.license     = "MIT"
  gem.summary     = %Q{Allows access to Rails' request_id from global scope in a threadsafe manner}
  gem.description = %Q{Web requests in Rails get assigned a unique request id. To access this id in a threadsafe manner, you can simply call ```RailsRequestId.get```}
  gem.email       = "kunal@techthumb.in"
  gem.authors     = ["Kunal Parikh"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rails_request_id #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
