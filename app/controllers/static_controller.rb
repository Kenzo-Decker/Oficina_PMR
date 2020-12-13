class StaticController < ApplicationController
  def index
    @machines = Machine.all
  end
end
