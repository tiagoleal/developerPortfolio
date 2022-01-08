class AdditionalInformation < ApplicationRecord
  belongs_to :block
  belongs_to :portfolio
  validates :title, :description, presence: true
  validates :block_id, uniqueness: true
end