# frozen_string_literal: true

module Types
  class SerialType < BaseObject
    pundit_role :view

    field :id, ID, null: false
    field :title, String, null: false
    field :short_title, String, null: true
    field :byline, String, null: true
    field :genres, String, null: true
    field :release_date, String, null: true
    field :end_date, String, null: true
    field :slug, String, null: true
    field :tagline, String, null: true
    field :short_description, String, null: true
    field :long_description, String, null: true
    field :text, String, null: true
    field :default_subscriber_price, Int, null: true
    field :default_episode_price, Int, null: true
    field :custom_badge_text, String, null: true
    field :drm_restricted, Boolean, null: true
    field :mailing_list_id, String, null: true
    field :cover_tall, String, null: true
    field :cover_wide, String, null: true
    field :privileges, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :state, String, null: true
    field :pilot_episode_id, ID, null: true
    field :first_season_id, ID, null: true
    field :season_count, Int, null: true
    field :available_episode_count, Int, null: true
    field :upcoming_episode_count, Int, null: true
    field :new_episodes, Boolean, null: true
    # field :contributors_hash, types.jsonb
    field :last_episode_release_date, String, null: true
    field :seasons, [SeasonType], null: true
    field :pilot_episode, EpisodeType, null: true
    field :first_season, SeasonType, null: true
  end
end
