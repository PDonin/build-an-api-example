namespace :data do
  desc "create_users"
  task :create_users => [:environment] do
    100.times do |i|
      user = User.create(:email=>"xujiguang#{i}@gmail.com", :name=>"xujiguang#{i}",:activated=>Time.now)
    end
  end
end
