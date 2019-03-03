speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}"
end

def batch_badge_creator(guests)
  badges = []
  guests.each do |name|
    badges.push(badge_maker(name))
  end
  badges
end

def assign_rooms(guests)
  room = []
  room_number = 1
  guests.each do |name|
    room.push("Hello, #{name}. You'll be assigned room #{room_number}!")
    room_number += 1
  end
  room
end

def printer(list)
  batch_badge_creator(list).each do |speaker|
    puts speaker
  end
  assign_rooms(list).each do |room|
    puts room
  end
end