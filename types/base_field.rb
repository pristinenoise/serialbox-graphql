# frozen_string_literal: true

module Types
  class BaseField < GraphQL::Schema::Field
    include GraphQL::Pro::PunditIntegration::FieldIntegration
    pundit_role nil
  end
end
