class WelcomeController < ApplicationController
  def index
    @tables = Table.all
  end
end
