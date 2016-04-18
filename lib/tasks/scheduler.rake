desc "This task is called by the Heroku scheduler add-on"
task :cleanup_tokens => :environment do
  SessionToken.cleanup_tokens
end
