User.delete_all
Document.delete_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

# create admin
User.create(
  first_name: 'Main',
  last_name: 'Admin',
  email: 'admin@admin.com',
  password: 'cmsadmin',
  type: 'Admin'
)
