FactoryBot.define do

  factory(:location) do
    name {'Seedy Alley'}
    description {'dlijd ljkae sdas'}
  end

  factory(:item) do
    location = FactoryBot.create(:location)
    name {'switchblade'}
    atk_mod {1}
    hp_mod {4}
    location_id {location.id}
  end
  
end