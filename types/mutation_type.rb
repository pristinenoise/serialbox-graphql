# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :noOp, mutation: Mutations::NoOp
  end
end
