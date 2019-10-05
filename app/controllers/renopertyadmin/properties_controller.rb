# encoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class PropertiesController < ApplicationController

    def new
      @property = Property.new
    end

    def create
      @property = create_new_property
      if @property.save
        redirect_to properties_path
      else
        render :new
      end
    end

    def edit
    end

    def index
      @properties = Property.all.paginate(page: params[:page], per_page: 12)
    end

    private

    def create_new_property
      new_property = Property.new(property_params)
      new_property.property_type = convert_property_type
      new_property.area_id = convert_area_id
      new_property.layout = convert_layout
      new_property.balcony_direction = convert_balcony_direction
      new_property
    end

    # Serializeに対応するため、型をconvert
    def convert_property_type
      property_params[:property_type].present? ? property_params[:property_type].split : []
    end

    def convert_area_id
      property_params[:area_id].present? ? property_params[:area_id].split : []
    end

    def convert_layout
      property_params[:layout].present? ? property_params[:layout].split : []
    end

    def convert_balcony_direction
      property_params[:balcony_direction].present? ? property_params[:balcony_direction].split : []
    end

    def property_params
      params.required(:property).permit(
        :property_name, :prefecture_id, :area, :address, :price, :layout, :exclusive_area_size, :floore_level,
        :completion_date, :property_type, :balcony_size, :balcony_direction, :total_number_of_houses,
        :rights_concening_land, :management_company, :management_fee, :repair_reserve_fund, :handover_date,
        :transportation, :area_id
      )
    end
  end
end
