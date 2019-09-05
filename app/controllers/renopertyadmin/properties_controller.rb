# encoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class PropertiesController < ApplicationController

    def new
      @property = Property.new
    end

    def index
      @properties = Property.all
    end

  end
end
