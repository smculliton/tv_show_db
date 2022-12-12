class Show < ApplicationRecord
  validates_presence_of :name #, :genre1
  # validates :rating, numericality: true

  def self.search(search_param)
    where("name ilike ?", "%#{search_param}%")
  end 

  def self.save_all(search_results)
    ids = search_results.map { |result| result[:show][:id] }
    ids.map do |id|
      Show.create!(ShowService.show_info(id))
    end
  end
end