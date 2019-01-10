def nyc_pigeon_organizer(data)
  pigeons = {}

  data.each do |att_keys, att_values|
    att_values.each do |info, names|
      names.each do |name|
        if pigeons[name] == nil
          pigeons[name] = {}
        end

        if pigeons[name][att_keys] == nil
          pigeons[name][att_keys] = []
        end

        pigeons[name][att_keys] << info.to_s
      end
    end
  end

  return pigeons
end