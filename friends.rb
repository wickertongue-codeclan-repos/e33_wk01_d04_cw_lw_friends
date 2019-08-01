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



# person[:favourites][:snacks]
