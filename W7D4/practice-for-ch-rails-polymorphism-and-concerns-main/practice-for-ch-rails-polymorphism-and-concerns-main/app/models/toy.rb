# == Schema Information
#
# Table name: toys
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  toyable_type :string           not null
#  toyable_id   :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Toy < ApplicationRecord
    
    validates :name, presence: true, uniqueness: { scope: [:toyable_type, :toyable_id]}

    include Toyable

end
