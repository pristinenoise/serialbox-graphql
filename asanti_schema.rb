# frozen_string_literal: true

class AsantiSchema < GraphQL::Schema
  authorization :pundit
  mutation(Types::MutationType)
  query(Types::QueryType)
end

complexity_logger = GraphQL::Analysis::QueryComplexity.new do |_q, complexity|
  Rails.logger.info("[GraphQL Query Complexity] #{complexity}")
end

AsantiSchema.query_analyzers << complexity_logger
