# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :getEpisodes, function: Resolvers::GetEpisodes.new
    field :getEpisode, function: Resolvers::GetEpisode.new

    field :getSeasons, function: Resolvers::GetSeasons.new
    field :getSeason, function: Resolvers::GetSeason.new

    field :getSerials, function: Resolvers::GetSerials.new
    field :getSerial, function: Resolvers::GetSerial.new

    field :getCurrentCustomer, function: Resolvers::GetCurrentCustomer.new
  end
end
