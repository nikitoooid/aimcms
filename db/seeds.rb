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
  title: 'Basic product',
  is_system: true,
  template_name: 'advanced',
  block_category_id: 1,
  content: "{\"multilang\":true,\"uk\":{\"blocks\":[{\"block\":\"div\",\"title\":\"Контейнер\",\"template_name\":\"container\",\"block_name\":\"ag_273949\",\"target\":\"ag_273949\",\"classlist\":\"container\",\"category\":\"Тестовая категория\",\"blocks\":[{\"block\":\"h1\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_63438\",\"target\":\"ag_63438\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"title\"}}},{\"block\":\"p\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_358046\",\"target\":\"ag_358046\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"description\"}}},{\"block\":\"hr\",\"title\":\"advanced block\",\"template_name\":\"default\",\"block_name\":\"ag_741254\",\"target\":\"ag_741254\",\"data\":{},\"aria\":{},\"classlist\":\"mt-3 mb-3\"},{\"block\":\"table\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_174112\",\"target\":\"ag_174112\",\"blocks\":[{\"block\":\"thead\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_732234\",\"target\":\"ag_732234\",\"blocks\":[{\"block\":\"tr\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_734961\",\"target\":\"ag_734961\",\"blocks\":[{\"block\":\"th\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_925891\",\"content\":\"Параметри\",\"target\":\"ag_925891\"},{\"block\":\"th\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"content\":\"Значення\",\"block_name\":\"ag_503949\"}],\"expanded\":false}],\"expanded\":false},{\"block\":\"tbody\",\"title\":\"advanced block\",\"template_name\":\"rte_helper\",\"block_name\":\"ag_415669\",\"target\":\"ag_415669\",\"rtype\":\"helper\",\"params\":{\"find\":{},\"hash_path\":\"content.params\"},\"blocks\":[{\"block\":\"tr\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"target\":\"ag_889884\",\"blocks\":[{\"block\":\"td\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_983071\",\"target\":\"ag_983071\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"name\"}}},{\"block\":\"td\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_605118\",\"target\":\"ag_605118\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"value\"}}}],\"block_name\":\"ag_889884\",\"expanded\":false}],\"helper\":\"rte_table\",\"expanded\":false}],\"classlist\":\"w-100\",\"expanded\":false}],\"expanded\":false}]},\"en\":{\"blocks\":[{\"block\":\"div\",\"title\":\"Контейнер\",\"template_name\":\"container\",\"block_name\":\"ag_273949\",\"target\":\"ag_273949\",\"classlist\":\"container\",\"category\":\"Тестовая категория\",\"blocks\":[{\"block\":\"h1\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_63438\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"title\"}}},{\"block\":\"p\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_358046\",\"target\":\"ag_358046\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"description\"}}},{\"block\":\"hr\",\"title\":\"advanced block\",\"template_name\":\"default\",\"block_name\":\"ag_741254\",\"target\":\"ag_741254\",\"data\":{},\"aria\":{},\"classlist\":\"mt-3 mb-3\"},{\"block\":\"table\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_174112\",\"target\":\"ag_174112\",\"blocks\":[{\"block\":\"thead\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_732234\",\"target\":\"ag_732234\",\"blocks\":[{\"block\":\"tr\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_734961\",\"target\":\"ag_734961\",\"blocks\":[{\"block\":\"th\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_925891\",\"content\":\"Parameter\",\"target\":\"ag_925891\"},{\"block\":\"th\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"content\":\"Value\",\"block_name\":\"ag_503949\"}]}]},{\"block\":\"tbody\",\"title\":\"advanced block\",\"template_name\":\"rte_helper\",\"block_name\":\"ag_415669\",\"target\":\"ag_415669\",\"rtype\":\"helper\",\"params\":{\"find\":{},\"hash_path\":\"content.params\"},\"blocks\":[{\"block\":\"tr\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"target\":\"ag_889884\",\"blocks\":[{\"block\":\"td\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_983071\",\"target\":\"ag_983071\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"name\"}}},{\"block\":\"td\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_605118\",\"target\":\"ag_605118\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"value\"}}}],\"block_name\":\"ag_889884\"}],\"helper\":\"rte_table\"}],\"classlist\":\"w-100\",\"expanded\":false}],\"expanded\":true}]},\"ru\":{\"blocks\":[{\"block\":\"div\",\"title\":\"Контейнер\",\"template_name\":\"container\",\"block_name\":\"ag_273949\",\"target\":\"ag_273949\",\"classlist\":\"container\",\"category\":\"Тестовая категория\",\"blocks\":[{\"block\":\"h1\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_63438\",\"target\":\"ag_63438\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"title\"}}},{\"block\":\"p\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_358046\",\"target\":\"ag_358046\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"description\"}}},{\"block\":\"hr\",\"title\":\"advanced block\",\"template_name\":\"default\",\"block_name\":\"ag_741254\",\"target\":\"ag_741254\",\"data\":{},\"aria\":{},\"classlist\":\"mt-3 mb-3\"},{\"block\":\"table\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_174112\",\"target\":\"ag_174112\",\"blocks\":[{\"block\":\"thead\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_732234\",\"target\":\"ag_732234\",\"blocks\":[{\"block\":\"tr\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_734961\",\"target\":\"ag_734961\",\"blocks\":[{\"block\":\"th\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"block_name\":\"ag_925891\",\"content\":\"Параметр\",\"target\":\"ag_925891\"},{\"block\":\"th\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"content\":\"Значение\",\"block_name\":\"ag_503949\"}]}]},{\"block\":\"tbody\",\"title\":\"advanced block\",\"template_name\":\"rte_helper\",\"block_name\":\"ag_415669\",\"target\":\"ag_415669\",\"rtype\":\"helper\",\"params\":{\"find\":{},\"hash_path\":\"content.params\"},\"blocks\":[{\"block\":\"tr\",\"title\":\"advanced block\",\"template_name\":\"advanced\",\"target\":\"ag_889884\",\"blocks\":[{\"block\":\"td\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_983071\",\"target\":\"ag_983071\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"name\"}}},{\"block\":\"td\",\"title\":\"advanced block\",\"template_name\":\"advanced_attribute\",\"block_name\":\"ag_605118\",\"target\":\"ag_605118\",\"rtype\":\"attribute\",\"params\":{\"attribute\":{\"content\":\"value\"}}}],\"block_name\":\"ag_889884\"}],\"helper\":\"rte_table\"}],\"classlist\":\"w-100\",\"expanded\":true}],\"expanded\":true}]}}"
])

# create base settings
Setting.create(
  site_name: 'My website',
  product_template_id: 1
)

p 'Root user creadted.'
p 'Login: admin@admin.com'
p 'Password: cmsadmin'
