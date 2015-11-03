json.array!(@words) do |word|
  json.extract! word, :id, :word, :meaning
  json.url word_url(word, format: :json)
end
