class BullshitsController < ApplicationController
  # GET /bullshits
  # GET /bullshits.xml
  def index
    @bullshits = Bullshit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bullshits }
    end
  end

  # GET /bullshits/1
  # GET /bullshits/1.xml
  def show
    @bullshit = Bullshit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bullshit }
    end
  end

  # GET /bullshits/new
  # GET /bullshits/new.xml
  def new
    @bullshit = Bullshit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bullshit }
    end
  end

  # GET /bullshits/1/edit
  def edit
    @bullshit = Bullshit.find(params[:id])
  end

  # POST /bullshits
  # POST /bullshits.xml
  def create
    @bullshit = Bullshit.new(params[:bullshit])

    respond_to do |format|
      if @bullshit.save
        flash[:notice] = 'Bullshit was successfully created.'
        format.html { redirect_to(@bullshit) }
        format.xml  { render :xml => @bullshit, :status => :created, :location => @bullshit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bullshit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bullshits/1
  # PUT /bullshits/1.xml
  def update
    @bullshit = Bullshit.find(params[:id])

    respond_to do |format|
      if @bullshit.update_attributes(params[:bullshit])
        flash[:notice] = 'Bullshit was successfully updated.'
        format.html { redirect_to(@bullshit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bullshit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bullshits/1
  # DELETE /bullshits/1.xml
  def destroy
    @bullshit = Bullshit.find(params[:id])
    @bullshit.destroy

    respond_to do |format|
      format.html { redirect_to(bullshits_url) }
      format.xml  { head :ok }
    end
  end
end
