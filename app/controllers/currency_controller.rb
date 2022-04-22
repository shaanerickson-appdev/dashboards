class CurrencyController < ApplicationController
  def list_one
    raw_data = open("https://api.exchangerate.host/symbols").read
    parsed_data = JSON.parse(raw_data)
    @symbols = parsed_data["symbols"].keys
    render({ :template => "currency_templates/list_one.html.erb"})
  end
  def list_two
    raw_data = open("https://api.exchangerate.host/symbols").read
    parsed_data = JSON.parse(raw_data)
    @start = params[:start]
    @symbols = parsed_data["symbols"].keys
    render({ :template => "currency_templates/list_two.html.erb"})
  end

  def convert
    raw_data = open("https://api.exchangerate.host/convert?from="+params[:start].to_s+"&to="+params[:end].to_s).read
    parsed_data = JSON.parse(raw_data)
    @start = params[:start]
    @end = params[:end]
    @rate = parsed_data["info"]["rate"]
    #symbols = parsed_data["symbols"].keys

    render({ :template => "currency_templates/convert.html.erb"})
  end
end