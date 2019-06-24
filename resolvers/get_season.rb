# frozen_string_literal: true

class Resolvers::GetSeason < GraphQL::Function
  argument :id, !types.ID
  description 'Find an Season by ID'
  type Types::SeasonType

  def call(_obj, args, _ctx)
    Season.find(args['id'])
  end
end
