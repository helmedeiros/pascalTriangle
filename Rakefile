require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.test_files = FileList['test/tc_*.rb']
  t.ruby_opts = ['-w']
  t.verbose = true
end

task :default => :test