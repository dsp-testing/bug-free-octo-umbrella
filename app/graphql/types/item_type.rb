module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :shop_id, ID, null: true
  end
end