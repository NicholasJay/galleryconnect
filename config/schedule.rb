set :environment, "development"
every :thursday, :at => '6pm' do
  runner "Card.send_weekly_cards", :environment => 'development', :output => 'log/cron.log'
end
