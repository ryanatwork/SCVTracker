class TipFile < ActiveRecord::Base
  belongs_to :crime_tip
  has_attached_file :tip

  before_post_process :is_image?

  def is_image?
    ["image/jpeg", "image/pjpeg", "image/png", "image/x-png", "image/gif"].include?(@content_type)
  end

end
