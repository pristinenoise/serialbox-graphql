# frozen_string_literal: true

class Resolvers::GetSerials < GraphQL::Function
  include GraphQL::PolicySupport

  description 'Return all serials'
  type types[Types::SerialType]
  default_policy SerialPolicy, Serial

  def call(_obj, _args, _ctx)
    @default_policy_scope.all
  end
end
