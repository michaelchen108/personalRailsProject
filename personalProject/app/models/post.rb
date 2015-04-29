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
#  latitude           :float
#  longitude          :float
#  address            :string(255)
#

class Post < ActiveRecord::Base
	belongs_to :user

	has_many :comments

	acts_as_taggable
	acts_as_taggable_on :type

	validates :title, presence: :true
	validates :description, presence: :true
	validates :user_id, presence: :true

	has_attached_file :image, :styles => { :medium => "500x500>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	
  	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
	
	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode  # auto-fetch address
end
