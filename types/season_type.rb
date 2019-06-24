# frozen_string_literal: true

module Types
  class SeasonType < BaseObject
    pundit_role :view

    field :id, ID, null: false
    field :title, String, null: false
    field :release_date, String, null: true
    field :serial_id, ID, null: false
    # field :price_tier_id, types.ID
    field :slug, String, null: false
    field :season_number, Int, null: false
    field :description, String, null: true
    field :featured, Boolean, null: true
    field :recommended_season_id, ID, null: true
    field :shortened_url, String, null: true
    field :cover_wide, String, null: true
    field :cover_tall, String, null: true
    field :sku, String, null: false
    field :privileges, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :state, String, null: true
    field :episode_count, Int, null: true
    # field :contributors_hash, jsonb
    field :episodes, [EpisodeType], null: true
    field :serial, SerialType, null: false
    field :recommended_season, SeasonType, null: true
  end
end
