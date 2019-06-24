# frozen_string_literal: true

module Types
  class CustomerType < BaseObject
    pundit_role :themself

    field :id, ID, null: false
    field :email, String, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :auth_id, String, null: false
    field :legacy_auth0_id, String, null: true
    field :client_id, String, null: true
    field :registration_date, GraphQL::Types::ISO8601DateTime, null: true
    field :test_account, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
