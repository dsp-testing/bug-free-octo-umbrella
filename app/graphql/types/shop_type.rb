module Types
  class ShopType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :items, ItemType.connection_type, null: true, max_page_size: 25

    # def items
    #   ActiveRecord::Base.connected_to(role: :reading) do
    #     p object

    #   end
    # end

  end
end