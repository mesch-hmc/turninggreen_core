namespace :task do
  desc "import json into database"
  task importjson: :environment do
    File.open(File.dirname(__FILE__)+'/../../db/tip_of_the_day/tips.json') do |file|
      JSON.parse(file.read).each do |tip|
        # TODO: Add a serializer
        TipsDaily.create! tip[1]
      end
    end
  end
end
