class List < ApplicationRecord
    has_many :list_items, dependent: :destroy
    accepts_nested_attributes_for :list_items

end