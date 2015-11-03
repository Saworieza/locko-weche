json.array!(@englishes) do |english|
  json.extract! english, :id, :word, :meaning
  json.url english_url(english, format: :json)
end
