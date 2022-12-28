json.extract! student, :id, :name, :national_id, :registration_number, :location, :phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
