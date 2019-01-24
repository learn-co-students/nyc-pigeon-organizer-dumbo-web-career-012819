require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  bird_hash = {}
  data[:gender].each do |gend, birds|
    birds.each do |bird|
      bird_hash[bird] = {}
    end
  end
  data[:color].each do |color_name, arr_birds|
    arr_birds.each do |bird|
      if !bird_hash[bird][:color]
        bird_hash[bird][:color] = [color_name.to_s]
      else
        bird_hash[bird][:color] << color_name.to_s
      end
    end
  end
  data[:gender].each do |gender_name, arr_birds|
    arr_birds.each do |bird|
      bird_hash[bird][:gender] = [gender_name.to_s]
    end
  end
  data[:lives].each do |location, arr_birds|
    arr_birds.each do |bird|
      bird_hash[bird][:lives] = [location.to_s]
    end
  end
  
  bird_hash
end