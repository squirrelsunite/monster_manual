class CreaturesController < ApplicationController
  # GET /creatures
  # GET /creatures.xml
  def index
    @creatures = Creature.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @creatures }
    end
  end

  # GET /creatures/1
  # GET /creatures/1.xml
  def show
    @creature = Creature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @creature }
    end
  end

  # GET /creatures/new
  # GET /creatures/new.xml
  def new
    @creature = Creature.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @creature }
    end
  end

  # GET /creatures/1/edit
  def edit
    @creature = Creature.find(params[:id])
  end

  # POST /creatures
  # POST /creatures.xml
  def create
    @creature = Creature.new(params[:creature])
    @creature.get_defaults_from_monster

    respond_to do |format|
      if @creature.save
        format.html { redirect_to(@creature, :notice => 'Creature was successfully created.') }
        format.xml  { render :xml => @creature, :status => :created, :location => @creature }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @creature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /creatures/1
  # PUT /creatures/1.xml
  def update
    @creature = Creature.find(params[:id])

    respond_to do |format|
      if @creature.update_attributes(params[:creature])
        format.html { redirect_to(@creature, :notice => 'Creature was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @creature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /creatures/1
  # DELETE /creatures/1.xml
  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy

    respond_to do |format|
      format.html { redirect_to(creatures_url) }
      format.xml  { head :ok }
    end
  end
end
