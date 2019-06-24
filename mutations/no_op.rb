# frozen_string_literal: true

module Mutations
  class NoOp < BaseMutation
    type Types::DateType

    def resolve
      Time.zone.today
    end
  end
end
