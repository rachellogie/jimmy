class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations
  has_many :reviews

  geocoded_by :address
  after_validation :geocode
  #, if: :country_changed?

  validates :project_name, presence: true, length: {maximum: 250}
  validates :summary, presence: true, length: {maximum: 1500}
  validates :country, presence: true

  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

  def country_name
     c = ISO3166::Country[self.country]
     return c.translations[I18n.locale.to_s] || c.name
  end
end
