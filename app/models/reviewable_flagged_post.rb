require_dependency 'reviewable'

class ReviewableFlaggedPost < Reviewable

  def build_actions(actions, guardian, args)
    return unless pending?

    actions.add(:approve)
    actions.add(:reject)
  end

  def perform_approve(performed_by, args)
    create_result(:success, :approved)
  end

  def perform_reject(performed_by, args)
    create_result(:success, :rejected)
  end

end
