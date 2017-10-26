class SubMenu
  include Mongoid::Document
  field :name, type: String
  field :is_show, type: Mongoid::Boolean

  belongs_to :parent_menu
  belongs_to :diymenu
end
