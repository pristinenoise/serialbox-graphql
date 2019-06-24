# frozen_string_literal: true

module Types
  class BaseUnion < GraphQL::Schema::Union
    include GraphQL::Pro::PunditIntegration::UnionIntegration
  end
end
