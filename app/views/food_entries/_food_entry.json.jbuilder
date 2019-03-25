json.extract! food_entry, :id, :fed_date, :amount, :notes, :created_at, :updated_at
json.url food_entry_url(food_entry, format: :json)
