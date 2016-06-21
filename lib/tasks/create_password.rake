namespace :data do
  task :create_password => [:environment] do
    100.times do |i|
      user = User.find i+1
      user.password = "xujiguang#{i}"
      user.password_confirmation = "xujiguang#{i}"
      user.save
    end
  end
end
