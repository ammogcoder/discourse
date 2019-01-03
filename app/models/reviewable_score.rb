class ReviewableScore < ActiveRecord::Base
  belongs_to :reviewable
  belongs_to :user

  def self.statuses
    @statuses ||= Enum.new(
      pending: 0,
      agreed: 1,
      disagreed: 2,
      ignored: 3
    )
  end

  def score_type
    Reviewable::Collection::Item.new(reviewable_score_type)
  end

end
