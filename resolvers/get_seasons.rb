# frozen_string_literal: true

class Resolvers::GetSeasons < GraphQL::Function
  include GraphQL::PolicySupport

  description 'Return all seasons'
  type types[Types::SeasonType]
  default_policy SeasonPolicy, Season

  def call(_obj, _args, _ctx)
    @default_policy_scope.all
  end
end
