require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |sex, name|
    name.each {|pigeon| pigeon_list[pigeon] = {color: [], gender: [], lives:[]}}
  end
  data.each do |category, info|
    info.each do |trait, name|
      name.each do |pigeon|
        pigeon_list[pigeon][category.to_sym] << trait.to_s
      end
    end
  end
  pigeon_list
end