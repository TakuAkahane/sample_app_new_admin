require_dependency 'renopertyadmin/application_controller'

module Renopertyadmin
  class DashboardController < ApplicationController

    def index
      render :index, layout: 'renopertyadmin/application'
    end
  end
end
