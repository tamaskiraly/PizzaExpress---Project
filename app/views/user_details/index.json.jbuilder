json.array!(@user_details) do |user_detail|
  json.extract! user_detail, :id, :user_id, :address, :email, :phone
  json.url user_detail_url(user_detail, format: :json)
end
