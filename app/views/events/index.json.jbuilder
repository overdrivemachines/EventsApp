json.array!(@events) do |event|
  json.extract! event, :id, :title, :fromDate, :fromTime, :untilTime, :untilDate, :address1, :address2, :zip, :description, :url, :email, :phone, :user_id
  json.url event_url(event, format: :json)
end
