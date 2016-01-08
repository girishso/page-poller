desc "Execute jobs on schedule"
task :execute_jobs => :environment do
  puts "Execute jobs..."
  Scraper.execute_jobs
  puts "done."
end

# task :send_reminders => :environment do
#   User.send_reminders
# end

task :delete_old_recs => :environment do
  Log.where("created_at < ?", [1.week.ago]).destroy_all
  Notification.where("created_at < ?", [2.months.ago]).destroy_all
end