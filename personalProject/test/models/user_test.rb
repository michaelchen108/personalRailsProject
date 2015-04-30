# == Schema Information
#
# Table name: users
#
#  id                          :integer          not null, primary key
#  email                       :string(255)      default(""), not null
#  encrypted_password          :string(255)      default(""), not null
#  reset_password_token        :string(255)
#  reset_password_sent_at      :datetime
#  remember_created_at         :datetime
#  sign_in_count               :integer          default(0), not null
#  current_sign_in_at          :datetime
#  last_sign_in_at             :datetime
#  current_sign_in_ip          :string(255)
#  last_sign_in_ip             :string(255)
#  created_at                  :datetime
#  updated_at                  :datetime
#  name                        :string(255)
#  admin                       :boolean
#  address                     :string(255)
#  latitude                    :float
#  longitude                   :float
#  my_draft_comments_count     :integer          default(0)
#  my_published_comments_count :integer          default(0)
#  my_comments_count           :integer          default(0)
#  draft_comcoms_count         :integer          default(0)
#  published_comcoms_count     :integer          default(0)
#  deleted_comcoms_count       :integer          default(0)
#  spam_comcoms_count          :integer          default(0)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
