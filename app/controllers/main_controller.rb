class MainController < ApplicationController
  def index
    render :json => { status: 'ok' }.to_json
  end
end
