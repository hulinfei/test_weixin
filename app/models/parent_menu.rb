class ParentMenu
  include Mongoid::Document
  field :name, type: String
  field :is_show, type: Boolean, default: true
  field :sort, type: Integer

  belongs_to :public_account
  has_many :sub_menus
end
