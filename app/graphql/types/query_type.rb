module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    
    
    field :shops, ShopType.connection_type, null: false do
      argument :ids, [Integer, null: true], required: false
    end
    def shops(**args)
      ActiveRecord::Base.connected_to(role: :reading) do
        Shop.where(id: args[:ids])
      end
    end
  end
end
