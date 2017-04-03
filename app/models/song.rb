class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true

  def self.order_by_name
    order(:name)
  end

  def is_long?
    time > 3
  end
end
