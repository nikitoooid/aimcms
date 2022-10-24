namespace :deploy do
  desc "get the migration version"
  task :status do
    on roles(:all) do
      within current_path do
        execute :bundle, :exec, 'rails', 'db:migrate:status', 'RAILS_ENV=production'
      end
    end
  end
end
