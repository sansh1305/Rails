json.extract! crud, :id, :first_name, :last_name, :phone_no, :house_address, :day_registered, :email_id, :created_at, :updated_at
json.url crud_url(crud, format: :json)
