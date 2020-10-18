desc "remove old searches older than a week"
task :remove_old_searches => :environment do
    searche.delete_all ["created_at < ?", 1.week.ago]
end
