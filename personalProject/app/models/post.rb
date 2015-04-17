# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Post < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: :true
	validates :description, presence: :true
	validates :user_id, presence: :true

	has_attached_file :image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
