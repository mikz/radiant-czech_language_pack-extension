namespace :radiant do
  namespace :extensions do
    namespace :cs_CZ do
      
      desc "Runs the migration of the I18n cs_CZ extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          I18nFrExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          I18nFrExtension.migrator.migrate
        end
      end
    end
  end
end
