class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authenticate_user!, only: [:show, :index]
  skip_before_action :authenticate_user!, except: [:show, :index]
  skip_before_action :authenticate_user!, only: [:show, :index]


end
