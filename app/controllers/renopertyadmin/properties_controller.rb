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

    def index
      @properties = Property.all
    end

    private

    def create_new_property
      new_property = Property.new(properties_params)
      new_property.property_type = convert_property_type
      new_property.ward_id = convert_ward_id
      new_property.layout = convert_layout
      new_property.balcony_direction = convert_balcony_direction
      new_property
    end

    # Serializeに対応するため、型をconvert
    def convert_property_type
      properties_params[:property_type].present? ? properties_params[:property_type].split : []
    end

    def convert_ward_id
      properties_params[:ward_id].present? ? properties_params[:ward_id].split : []
    end

    def convert_layout
      properties_params[:layout].present? ? properties_params[:layout].split : []
    end

    def convert_balcony_direction
      properties_params[:balcony_direction].present? ? properties_params[:balcony_direction].split : []
    end

    def properties_params
      params.required(:property).permit(
        :property_name, :prefecture_id, :area, :address, :price, :layout, :exclusive_area_size, :floore_level,
        :completion_date, :property_type, :balcony_size, :balcony_direction, :total_number_of_houses,
        :rights_concening_land, :management_company, :management_fee, :repair_reserve_fund, :handover_date,
        :transportation, :ward_id
      )
    end
  end
end
