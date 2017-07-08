class Contract < ApplicationRecord
  belongs_to :contractor, class_name: 'User', foreign_key: 'user_id'
  belongs_to :contractee, class_name: 'User', foreign_key: 'user_id'
end
