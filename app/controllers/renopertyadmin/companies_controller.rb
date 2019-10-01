# encoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class CompaniesController < ApplicationController

    def new
      @company = Company.new
    end

    def create
      @company.attributes = company_params
    end

    def index
      @companies = Company.all
    end

    private

    def company_params
      params.required(:company).permit(
        :address, :name, :tel, :establishment, :description, :deleted,
        ward_id: [], public: [], company_size_id: []
      )
    end

  end
end
