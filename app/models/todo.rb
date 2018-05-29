class StateValidator < ActiveModel::Validator
  def validate(record)
    if(record.state < 1 || record.state > 3)
      record.errors[:state] << 'Invalid state'
    end
  end
end

class Todo < ApplicationRecord
  validates :content, :state, presence: true
  include ActiveModel::Validations
  validates_with StateValidator
end
