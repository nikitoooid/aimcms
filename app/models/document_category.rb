class DocumentCategory < Category
  has_many :items, class_name: 'Document'
end