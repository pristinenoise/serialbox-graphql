# frozen_string_literal: true

class Resolvers::GetCurrentCustomer < GraphQL::Function
  description 'Returns the current logged-in customer'
  type Types::CustomerType

  def call(_obj, _args, ctx)
    current_customer = ctx[:current_user]
    return if current_customer.blank?

    Customer.find_by(id: current_customer.id)
  end
end
