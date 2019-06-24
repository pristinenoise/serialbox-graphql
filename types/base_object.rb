# frozen_string_literal: true

module Types
  class BaseObject < GraphQL::Schema::Object
    include GraphQL::Pro::PunditIntegration::ObjectIntegration
    include GraphQL::Pro::PunditIntegration::FieldIntegration
    pundit_role nil
    field_class Types::BaseField
  end
end
