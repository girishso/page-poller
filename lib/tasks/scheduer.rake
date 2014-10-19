desc "Execute jobs on schedule"
task :execute_jobs => :environment do
  puts "Execute jobs..."
  Scraper.execute_jobs
  puts "done."
end

task :send_reminders => :environment do
  User.send_reminders
end
