class Admin::ProductController < ApplicationController

  before_action :authenticate_admin, :only => [:index,:add]
  layout "admin"
  def index

  end

  def add
  	
  end

end