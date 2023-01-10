json.extract! subject, :id, :subject_name, :course_id, :staff_id, :student_id, :created_at, :updated_at
json.url subject_url(subject, format: :json)
