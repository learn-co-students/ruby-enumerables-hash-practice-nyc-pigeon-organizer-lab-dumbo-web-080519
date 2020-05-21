def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |pigeon_info, values|
    values.each do |value, array|
      array.each do |names|
        if pigeons[names] == nil
          pigeons[names] = {}
          pigeons[names][pigeon_info] = []
        else
          pigeons[names][pigeon_info] =[]
        end
      end
    end
  end
  
  pigeons.each do |name, values|
    values.each do |info, array|
      data.each do |pigeon_info, values|
        values.each do |value, array|
          array.each do |element|
            if element == name && info == pigeon_info
              pigeons[name][info] << value.to_s
            end
          end
        end
      end
    end
  end
  
  return pigeons
end
