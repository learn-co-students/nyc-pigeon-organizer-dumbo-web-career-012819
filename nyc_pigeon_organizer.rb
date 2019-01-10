
require 'pry'
def nyc_pigeon_organizer(data)
name_list = {}

 data.each do |about, details|
   details.each do |trait, array|
     array.each do |pigeon|
      if !name_list[pigeon]
          name_list[pigeon] = {}

      end
      if !name_list[pigeon][about]
          name_list[pigeon][about] = []


      end
        name_list[pigeon][about].push(trait.to_s)
    end
   end
  end
  name_list
end
