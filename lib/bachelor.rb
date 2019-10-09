require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, value|
    if season == seasons
      value.each do |contestant, status| 
        if contestant["status"] == "Winner"
         return (contestant["name"].split)[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, value|
    value.each do |stats|
    return stats["name"] if stats["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  arr = []
  data.each do |season, value|
    value.each do |stats| 
       arr << stats["hometown"] if stats["hometown"] == hometown
       
  end
 end
  arr.count
end

def get_occupation(data, hometown)
  data.each do |season, value|
    value.each do |stats|
      return stats["occupation"] if stats["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  age_arr = []
  ages = ''
  data.each do |seasons, value|
    if season == seasons
    value.each do |stats|
      age_arr << stats["age"].to_f
      ages = age_arr.sum / age_arr.count 
      # return ages 
      end
    end 
  end
  ages.round 
end
