class ParentMenu
  include Mongoid::Document
  field :name, type: String
  field :is_show, type: Mongoid::Boolean

  belongs_to :public_account
  has_many :sub_menus
end
