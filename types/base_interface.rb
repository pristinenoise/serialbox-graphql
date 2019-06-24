# frozen_string_literal: true

module Types
  module BaseInterface
    include GraphQL::Schema::Interface
    include GraphQL::Pro::PunditIntegration::InterfaceIntegration
    field_class Types::BaseField
  end
end
