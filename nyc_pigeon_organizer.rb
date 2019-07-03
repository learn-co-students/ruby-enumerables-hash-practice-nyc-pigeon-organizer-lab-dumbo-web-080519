def nyc_pigeon_organizer(data)
  organized = {}
  
  data.keys.each do |key|
    data[key].keys.each do |value|
      data[key][value].each do |name|
        if !organized.has_key?(name)
          organized[name] = {}
        end
        if !organized[name].has_key?(key)
          organized[name][key] = [value.to_s]
        else
          organized[name][key].push(value.to_s)
        end
      end
    end
  end
  
  organized
end
