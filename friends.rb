require ("pry")

def get_name(person)
  return person[:name]
end

def get_fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def get_likes_to_eat(person,food_item)
  if food_item == person[:favourites][:snacks][1]
    return true
  else
    return false
  end
end

def add_friend(person,friend)
  person[:friends].push(friend)
end

def remove_friend(person,friend)
  person[:friends].delete(friend)
end

def add_everyones_money(people)
  total_monies = 0
  for each_person in people
    total_monies += each_person[:monies]
  end
    return total_monies
end

def loan_money(lender, lendee, amount_loaned)
  lender[:monies] -= amount_loaned
  lendee[:monies] += amount_loaned
end

def all_favourite_foods_combined(people)
  array_of_fav_snacks = []
  for each_person in people
    for snack in each_person[:favourites][:snacks]
      array_of_fav_snacks.push(snack)
    end
  end
  return array_of_fav_snacks
end

# Hayden's potentially broken solution?

def find_no_friends(people)
  array_of_people_with_no_friends = []
  # binding.pry
  for each_person in people
    if each_person[:friends] == []
      array_of_people_with_no_friends.push(each_person[:name])
    end
  end
  return array_of_people_with_no_friends
end

# No friends instructor solution:

def find_no_friends(people)
  no_mates = []
  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end
  end
  p no_mates
end

# person[:favourites][:snacks]
