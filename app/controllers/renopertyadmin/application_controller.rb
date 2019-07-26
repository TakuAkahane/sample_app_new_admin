# engoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class ApplicationController < ::ApplicationController
    include Accessible

    protect_from_forgery with: :exception

    # デフォルトレイアウトの指定
    layout 'renopertyadmin/application'
  end
end
