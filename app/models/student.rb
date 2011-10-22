class Student < ActiveRecord::Base

  belongs_to :drug
  belongs_to :race
  belongs_to :school
  belongs_to :risk_factor
  belongs_to :updated_school, :class_name => "School", :foreign_key => "updated_school_id"
  belongs_to :deputy, :class_name => "User", :foreign_key => "school_deputy_id"

  if Rails.env  == 'development'
    has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :default_url => 'default_student.jpg'
  elsif Rails.env  == 'production'
      has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => 'default_student.jpg',
                    :storage => :s3,
                    :bucket => 'sheriff',
                    :s3_credentials => {:access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end


  validates_presence_of :first_name

  def age(dob, now = Time.now.utc.to_date)
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
