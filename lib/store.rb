class Store < ActiveRecord::Base
  
  has_many :employees

  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :must_stock_apparel_for_men_or_women

  def must_stock_apparel_for_men_or_women
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel, "store must sell apparel for men and/or women")
    end
  end

end