class PeopleController < ApplicationController
  respond_to :xml, :json, :yaml, :binary_plist, :xml_plist
  
  def index
    @people = Person.limit(params[:limit] || 100)
    respond_with(@people) do |f|
      f.binary_plist { render :binary_plist => @people }
      f.xml_plist    { render :xml_plist    => @people }
    end
  end
  
  def show
    @person = Person.find(params[:id])
    respond_with(@person) do |f|
      f.binary_plist { render :binary_plist => @person }
      f.xml_plist    { render :xml_plist    => @person }
    end  end
end
