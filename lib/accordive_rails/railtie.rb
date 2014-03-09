module AccordiveRails
  require 'rails'
  class Railtie < Rails::Railtie
    initializer 'accordive_rails.insert_into_active_record' do
      ActiveSupport.on_load :active_record do
        ::ActiveRecord::Base.send :include, AccordiveRails::ActiveRecord
      end
    end
  end
end