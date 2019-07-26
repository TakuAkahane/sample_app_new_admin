# encoding: utf-8
# frozen_string_literal: true

require_dependency 'rcadmin/application_controller'

module Rcadmin
  class UsersController < ApplicationController

    def index
      @users = User.all
    end

  end
end
