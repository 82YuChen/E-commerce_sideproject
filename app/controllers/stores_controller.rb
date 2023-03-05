class StoresController < ApplicationController

  def index
    @stores = Store.all
  end

  def show
    @store = Store.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update 
  end

  def destroy
  end

  def home
    @stores = Store.all
  end

  private

end
