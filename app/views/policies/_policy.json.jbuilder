json.extract! policy, :id, :policy_number, :insured_name, :insured_from, :insured_to, :premium_due, :active_status, :del_status, :created_at, :updated_at
json.url policy_url(policy, format: :json)
