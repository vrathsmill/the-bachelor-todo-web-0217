def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |season_num, season_info_arr|
    if season_num == season
      season_info_arr. each do |lady|
        if lady["status"] == "Winner"
          return lady["name"].split(" ")[0]
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data. each do |season_num, season_info_arr|
    season_info_arr. each do |lady|
      if lady["occupation"] == occupation
        return lady["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data. each do |season_num, season_info_arr|
    season_info_arr. each do |lady|
      if lady["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data. each do |season_num, season_info_arr|
    season_info_arr. each do |lady|
      if lady["hometown"] == hometown
        return lady["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)

      ages = data[season]. collect do |lady|
        lady["age"].to_i

  end
  ages_added = ages.reduce(0){|sum, age| sum += age}
  contestant_count = ages.count.to_f
  (ages_added / contestant_count).round

end
