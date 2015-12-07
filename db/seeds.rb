30.times do |i|
  Member.create({name: "programmer-#{i}", email: "email#{i}@begok.com", 
                  role: "Software Engineer", github: "git-#{i}account"})
end
