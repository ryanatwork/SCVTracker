class TipFile < ActiveRecord::Base
  belongs_to :crime_tip

  if Rails.env  == 'development'
    has_attached_file :tip, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  elsif Rails.env  == 'production'
      has_attached_file :tip, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :s3,
                    :bucket => 'sheriff',
                    :s3_credentials => {:access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end

  #before_post_process :is_image?

  def is_image?
    ["image/jpeg", "image/pjpeg", "image/png", "image/x-png", "image/gif"].include?(@content_type)
  end

end
