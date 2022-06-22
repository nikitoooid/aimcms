class BlockCategory < Category
  has_many :items, class_name: 'Block'
end