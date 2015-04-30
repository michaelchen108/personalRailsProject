# == Schema Information
#
# Table name: posts
#
#  id                       :integer          not null, primary key
#  title                    :string(255)
#  description              :text
#  created_at               :datetime
#  updated_at               :datetime
#  user_id                  :integer
#  image_file_name          :string(255)
#  image_content_type       :string(255)
#  image_file_size          :integer
#  image_updated_at         :datetime
#  latitude                 :float
#  longitude                :float
#  address                  :string(255)
#  draft_comments_count     :integer          default(0)
#  published_comments_count :integer          default(0)
#  deleted_comments_count   :integer          default(0)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
