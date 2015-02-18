json.array!(@myuploaders) do |myuploader|
  json.extract! myuploader, :id, :image
  json.url myuploader_url(myuploader, format: :json)
end
