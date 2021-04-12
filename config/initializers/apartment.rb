# frozen_string_literal: true

Apartment.configure do |config|
  config.tenant_names = -> { Tenant.pluck :database }
end

Rails.application.config.middleware.use Apartment::Elevators::Generic, proc { |request| Tenant.find_by( host: request.host ).id.to_s }