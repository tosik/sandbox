namespace :jenkins do
  task :spec => ["jenkins:setup:rspec", 'db:migrate', 'rake:spec']
  namespace :setup do
    task :pre_ci do
      ENV["CI_REPORTS"] = 'reports/spec/'
      gem 'ci_reporter'
      require 'ci/reporter/rake/rspec'
    end
    task :rspec => [:pre_ci, "ci:setup:rspec"]
  end
end
