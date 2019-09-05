# encoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class UsersController < ApplicationController

    def index
      @users = User.all
    end

  end
end
