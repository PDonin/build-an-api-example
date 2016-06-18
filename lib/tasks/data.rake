namespace :data do
  desc "create_users"
  task :create_users => [:environment] do
    100.times do |i|
      user = User.create(:email=>"xujiguang#{i}@gmail.com", :name=>"xujiguang#{i}",:activated=>Time.now)
    end
  end

  task :CreateMicroposts => [:environment] do
    user = User.find(1)
    100.times do |i|
      Micropost.create(:user_id => user.id, :title => "title#{i}", :context=>"content#{i}")
    end
  end
end
