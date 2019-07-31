# encoding: utf-8
# frozen_string_literal: true

require_dependency 'renopertyadmin/application_controller'

module Renopertyadmin
  class UsersController < ApplicationController

    def index
      @users = User.all
    end

  end
end
