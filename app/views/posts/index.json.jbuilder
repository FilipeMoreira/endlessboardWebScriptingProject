json.array!(@posts) do |post|
  json.extract! post, :id, :p_title, :p_content, :p_date, :user_id, :post_id
  json.url post_url(post, format: :json)
end
