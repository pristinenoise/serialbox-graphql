# frozen_string_literal: true

class Resolvers::GetSerial < GraphQL::Function
  argument :id, !types.ID
  description 'Find an Serial by ID'
  type Types::SerialType

  def call(_obj, args, _ctx)
    Serial.find(args['id'])
  end
end
