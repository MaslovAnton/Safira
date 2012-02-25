module Safira
  class Engine < Rails::Engine
    def self.activate
      #Spree::Config.set(:vkontakte_app_id => '')
      Spree::Config.set(:store_email => 'sales@safiramarket.ru') unless Spree::Config[:store_email]
      Spree::Config.set(:store_phone => '+7 (909) 359-9477') unless Spree::Config[:store_phone]
      PaymentMethod::SberBankCart.register
      PaymentMethod::RussianStandartCart.register
      PaymentMethod::SvyznoyCart.register
      PaymentMethod::WesternUnion.register

      # Add your custom site logic here
    end

    def load_tasks
    end

    config.to_prepare &method(:activate).to_proc
  end
end
