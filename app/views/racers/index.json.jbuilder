json.array! @racers do |racer|
  json.id racer.id
  json.name racer.name 
  json.born_at racer.born_at
  json.image_url racer.image_url
end 
