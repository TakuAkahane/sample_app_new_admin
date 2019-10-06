# encoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class CompaniesController < ApplicationController

    def new
      @company = Company.new
    end

    def create
      @company = Company.new(company_params)
      if @company.save
        redirect_to companies_path
      else
        render :new
      end
    end

    def edit
    end

    def index
      @companies = Company.all.paginate(page: params[:page], per_page: 30)
    end

    private

    def company_params
      params.required(:company).permit(
        :address, :name, :tel, :establishment, :description, :deleted, :ward_id,
        :public, :company_size_id
      )
    end

  end
end
