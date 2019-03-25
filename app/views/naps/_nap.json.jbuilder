json.extract! nap, :id, :nap_date, :duration, :notes, :created_at, :updated_at
json.url nap_url(nap, format: :json)
