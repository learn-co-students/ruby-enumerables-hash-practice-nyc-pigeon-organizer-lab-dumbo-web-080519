def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_name = []
  pigeon_list = {}
  data.each{|info, detail|
    detail.each{|attr,names|
      names.each{|pName|
        pigeon_list[pName] = {:color => [], :gender => [], :lives => []}
        if !pigeon_name.include?(pName)
        pigeon_name << pName
        end
      }
    }
  }
  data[:color].each{ |bColor, name|
    name.each{|bName|
      pigeon_name.each{|pName|
        if bName === pName
          pigeon_list[pName][:color] << bColor.to_s
        end 
      } 
    } 
  }
  data[:gender].each{ |bColor, name|
    name.each{|bName|
      pigeon_name.each{|pName|
        if bName === pName
          pigeon_list[pName][:gender] << bColor.to_s
        end 
      } 
    } 
  }
  data[:lives].each{ |bColor, name|
    name.each{|bName|
      pigeon_name.each{|pName|
        if bName === pName
          pigeon_list[pName][:lives] << bColor.to_s
        end 
      } 
    } 
  }
  pigeon_list 
end