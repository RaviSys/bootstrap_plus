require 'rails'

require_relative '../../app/helpers/flash_block_helper.rb'
require_relative '../../app/helpers/modal_helper.rb'
require_relative '../../app/helpers/navbar_helper.rb'
require_relative '../../app/helpers/bootstrap_flash_helper.rb'
require_relative '../../app/helpers/form_errors_helper.rb'
require_relative '../../app/helpers/badge_label_helper.rb'

module BootstrapPlus
  class Engine < ::Rails::Engine
    initializer 'bootstrap_plus.setup',
    group: :all do |app|
      if defined?(Less)
        app.config.less.paths << File.join(config.root, 'vendor', 'toolkit')
      end
    end

    initializer 'bootstrap_plus.setup_helpers' do |app|
      [FlashBlockHelper,
      BootstrapFlashHelper,
      ModalHelper,
      NavbarHelper,
      BadgeLabelHelper].each do |h|
        app.config.to_prepare do
          ActionController::Base.send :helper, h
        end
      end
      ActionView::Helpers::FormBuilder.send :include, FormErrorsHelper
    end
  end
end
