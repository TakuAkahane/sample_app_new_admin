# encoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class UsersController < ApplicationController

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to users_path
      else
        render :new
      end
    end

    def index
      @users = User.all.paginate(page: params[:page], per_page: 12)
    end

    private

    def user_params
      params.required(:user).permit(
      )
    end

  end
end
