class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  def self.order_by_name
    order(:name)
  end

end
