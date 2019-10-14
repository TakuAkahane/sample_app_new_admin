# engoding: utf-8
# frozen_string_literal: true

module Renopertyadmin
  class ApplicationController < ::ApplicationController
    include Accessible

    protect_from_forgery with: :exception

    # デフォルトレイアウトの指定
    layout 'renopertyadmin/application'

    # 起点復元リダイレクトの施策
    include Redirectable
    before_action :keep_back_to_path
    helper_method :back_to_param, :back_to_hidden_tag, :back_to_path
  end
end
