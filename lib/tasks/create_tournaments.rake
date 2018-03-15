namespace :tournament do

  desc 'Create tournaments'

  task :create => :environment do 
    10.times do
      name = Faker::Lorem.characters(20)
      Tournament.create(name: name) unless Tournament.find_by(name: name)
    end
  end
end
