class Result < ActiveRecord::Base
  belongs_to :team

  def self.period(start_date=nil, end_date=nil)
    start_date ||= Date.today-2.weeks
    end_date ||= Date.today
    joins(:team).where(date: start_date..end_date).group(:team_id)
        .select('sum(points) as total_points, team_id, state as team')
        .order('total_points desc, points desc')
        .map do |result|
      result.team = Team.find(result[:team_id])
      result
    end
  end
end
