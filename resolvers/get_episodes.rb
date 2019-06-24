# frozen_string_literal: true

class Resolvers::GetEpisodes < GraphQL::Function
  include GraphQL::PolicySupport

  description 'Return all episodes'
  type types[Types::EpisodeType]
  default_policy EpisodePolicy, Episode

  def call(_obj, _args, _ctx)
    @default_policy_scope.all
  end
end
