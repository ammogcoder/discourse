require_dependency 'reviewable_score_type_serializer'

class ReviewableScoreSerializer < ApplicationSerializer

  attributes :id, :score
  has_one :user, serializer: BasicUserSerializer, root: 'users'
  has_one :score_type, serializer: ReviewableScoreTypeSerializer

end
