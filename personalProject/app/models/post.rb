# == Schema Information
#
# Table name: posts
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  description        :text
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Post < ActiveRecord::Base
	belongs_to :user

	acts_as_taggable
	acts_as_taggable_on :type

	validates :title, presence: :true
	validates :description, presence: :true
	validates :user_id, presence: :true

	has_attached_file :image, :styles => { :medium => "500x500>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
