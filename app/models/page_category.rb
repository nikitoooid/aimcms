class PageCategory < Category
  has_many :items, class_name: 'Page'
end