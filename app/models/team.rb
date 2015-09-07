class Team < ActiveRecord::Base
  has_many :results

  validates_presence_of :name
  validates :name, uniqueness: true

  def period_results start_date, end_date
    start_date ||= Date.today-2.weeks
    end_date ||= Date.today
    results.where(date: start_date..end_date).order(date: :desc)
  end
end
