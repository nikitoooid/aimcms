User.delete_all
Document.delete_all
Page.delete_all
Setting.delete_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

# create base settings
Setting.create(
  site_name: 'My website',
  site_domain: 'http://mysite.com'
)

# create admin
User.create(
  first_name: 'Main',
  last_name: 'Admin',
  email: 'admin@admin.com',
  password: 'cmsadmin',
  type: 'Admin'
)

p 'Root user creadted.'
p 'Login: admin@admin.com'
p 'Password: cmsadmin'
