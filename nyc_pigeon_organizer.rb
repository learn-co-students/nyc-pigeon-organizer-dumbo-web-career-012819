require "pry"
=begin
def nyc_pigeon_organizer(data)
  new_array = []
  data.map do |info, info_hash|
  	unique_names = info_hash.values.flatten.uniq
  	info_hash.values.map do |name_array|
  		binding.pry
		unique_names.map do |name|
			name_array.map do |name_2|
				if unique_names.include?(name_2)
					info_hash.keys.map do |attribute|
						new_array << {name_2 => {info => attribute.to_s}}

					end
				end
			end
		end
  	end
  end
  new_array.uniq.each do |person_hash|
  	binding.pry
  end
end
=end


def nyc_pigeon_organizer(data)
	final_hash = {}
	data.each do |info, info_hash|
		info_hash.each do |attribute, names|
			names.each do |name|
				final_hash[name] ||= {}	
				binding.pry
				final_hash[name][info] ||= []
				binding.pry
				final_hash[name][info] << attribute.to_s
				binding.pry
			end
		end
	end 
	final_hash
end

=begin
def nyc_pigeon_organizer(data)
	data.each do |info, info_hash|
		info_hash.each do |attribute, names|
			binding.pry
		end
	end
end
=end
=begin
def nyc_pigeon_organizer(data)
	final_hash = {}
	name_array = []
	correct_array = []
	attribute_array = []
	#data.each do |info, info_hash|
		#name_array = info_hash.values.flatten.uniq
	#end
	data.each do |info, info_hash|
		info_hash.each do |attribute, names|
			binding.pry
			name_array.each do |name|
				if names.include?(name)
					correct_array << {name => {info => attribute.to_s}}
				end
			end
		end
	end 
	correct_array.each do |pigeon|
		binding.pry
	end
end
=end