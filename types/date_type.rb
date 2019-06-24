# frozen_string_literal: true

Types::DateType = GraphQL::ScalarType.define do
  name 'Date'

  coerce_input ->(value, _ctx) {
    begin
      Date.strptime(value, MM_DD_YYYY)
    rescue ArgumentError
      message = 'Date must be valid (mm/dd/yyyy)'
      GraphQL::ExecutionError.new(message)
    end
  }

  coerce_result ->(value, _ctx) { value.strftime(MM_DD_YYYY) }
end
