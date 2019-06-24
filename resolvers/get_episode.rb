# frozen_string_literal: true

class Resolvers::GetEpisode < GraphQL::Function
  argument :id, !types.ID
  description 'Find an Episode by ID'
  type Types::EpisodeType

  def call(_obj, args, _ctx)
    Episode.find(args['id'])
  end
end
