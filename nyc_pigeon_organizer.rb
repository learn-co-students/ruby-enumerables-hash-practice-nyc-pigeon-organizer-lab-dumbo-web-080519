require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |trait, attribute|
    attribute.each do |details, names|
      names.each do |pigeons|
        pigeon_list[pigeons] ||={}
        #binding.pry
        pigeon_list[pigeons][trait] ||=[]
        pigeon_list[pigeons][trait] << details.to_s
      end
    end
  end
  return pigeon_list
end
