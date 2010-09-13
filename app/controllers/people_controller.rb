class PeopleController < ApplicationController
  respond_to :xml, :json, :yaml
  
  def index
    @people = Person.limit(params[:limit] || 100)
    respond_with(@people)
  end
end