User.delete_all
Document.delete_all
Page.delete_all
Setting.delete_all
Style.delete_all
Product.delete_all
Category.delete_all
Block.delete_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

# create admin
User.create(
  first_name: 'Main',
  last_name: 'Admin',
  email: 'admin@admin.com',
  password: 'cmsadmin',
  type: 'Admin'
)

#create category for Rails templates
BlocckCategory.create({
  title: 'Rails',
  slug: 'rails-templates'
})

#create Rails templates
Block.create([
  {
    title: 'Basic product',
    is_system: true,
    block_category_id: 1,
    template_name: 'advanced',
    content: ""
  },
  {
    title: 'Product gallery',
    template_name: 'advanced',
    block_category_id: 1,
    content: ""
  }
])

# create base settings
Setting.create(
  site_name: 'My website',
  product_template_id: 1
)

p 'Root user creadted.'
p 'Login: admin@admin.com'
p 'Password: cmsadmin'
