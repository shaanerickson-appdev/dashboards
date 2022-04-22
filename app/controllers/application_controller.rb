class ApplicationController < ActionController::Base
  def dash
    render({ :template => "/dashboard.html.erb" })
  end
end
