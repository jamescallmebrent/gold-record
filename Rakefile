require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'bundler'
Bundler::GemHelper.install_tasks

MYSQL_DB_USER = 'root'

desc 'Run unit tests by default'
task :default => :test

Rake::TestTask.new(:test) { |t|
  t.libs << 'test'
  t.test_files = Dir.glob( "test/cases/**/*_test.rb" ).sort
  t.verbose = true
}

namespace :mysql do
  desc 'Build the MySQL test databases'
  task :build_databases do
    %x( echo "create DATABASE gold_record_test DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_unicode_ci " | mysql --user=#{MYSQL_DB_USER})
  end

  desc 'Drop the MySQL test databases'
  task :drop_databases do
    %x( mysqladmin --user=#{MYSQL_DB_USER} -f drop gold_record_test )
  end

  desc 'Rebuild the MySQL test databases'
  task :rebuild_databases => [:drop_databases, :build_databases]
end

task :build_mysql_databases => 'mysql:build_databases'
task :drop_mysql_databases => 'mysql:drop_databases'
task :rebuild_mysql_databases => 'mysql:rebuild_databases'


# Generate the RDoc documentation

Rake::RDocTask.new { |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "GoldRecord — Unobtrusive binary UUID support for ActiveRecord"
  rdoc.options << '--line-numbers' << '--inline-source' << '-A cattr_accessor=object'
  rdoc.options << '--charset' << 'utf-8'
  rdoc.template = ENV['template'] ? "#{ENV['template']}.rb" : '../doc/template/horo'
  rdoc.rdoc_files.include('README.txt', 'HISTORY.rdoc', 'LICENSE.txt')
  rdoc.rdoc_files.include('lib/**/*.rb')
}