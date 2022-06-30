class ProductCategory < Category
  has_many :items, class_name: 'Product'
end