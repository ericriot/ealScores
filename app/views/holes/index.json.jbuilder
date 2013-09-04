json.array!(@holes) do |hole|
  json.extract! hole, :number
  json.url hole_url(hole, format: :json)
end
