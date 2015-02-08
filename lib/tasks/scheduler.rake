desc "Send the weekly email reminders"
task :send_card_reminders => :environment do
  puts "Sending out email reminders."
  Card.send_weekly_cards
  puts "Emails sent!"
end