require 'rspec/core/rake_task'
task :default => :tdoc


desc 'Run tests with --format documentation'
task :tdoc do
  sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end
