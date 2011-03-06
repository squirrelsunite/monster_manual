class PowersController < ApplicationController
  # GET /powers
  # GET /powers.xml
  def index
    @powers = Power.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @powers }
    end
  end

  # GET /powers/1
  # GET /powers/1.xml
  def show
    @power = Power.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @power }
    end
  end

  # GET /powers/new
  # GET /powers/new.xml
  def new
    @power = Power.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @power }
    end
  end

  # GET /powers/1/edit
  def edit
    @power = Power.find(params[:id])
  end

  # POST /powers
  # POST /powers.xml
  def create
    @power = Power.new(params[:power])

    respond_to do |format|
      if @power.save
        format.html { redirect_to(@power, :notice => 'Power was successfully created.') }
        format.xml  { render :xml => @power, :status => :created, :location => @power }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @power.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /powers/1
  # PUT /powers/1.xml
  def update
    @power = Power.find(params[:id])

    respond_to do |format|
      if @power.update_attributes(params[:power])
        format.html { redirect_to(@power, :notice => 'Power was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @power.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /powers/1
  # DELETE /powers/1.xml
  def destroy
    @power = Power.find(params[:id])
    @power.destroy

    respond_to do |format|
      format.html { redirect_to(powers_url) }
      format.xml  { head :ok }
    end
  end
end
