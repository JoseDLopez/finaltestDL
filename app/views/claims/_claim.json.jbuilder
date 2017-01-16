json.extract! claim, :id, :title, :content, :user_id, :created_at, :updated_at
json.url claim_url(claim, format: :json)