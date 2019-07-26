# frozen_string_literal: true

require "renopertyadmin/engine"
module Renopertyadmin
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.template_engine :slim
      g.test_framework :rspec, fixture: false
      g.stylesheets true
      g.javascripts true
    end
  end
end
