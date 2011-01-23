class MonstersController < ApplicationController
  # GET /monsters
  # GET /monsters.xml
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @monsters }
    end
  end

  # GET /monsters/1
  # GET /monsters/1.xml
  def show
    @monster = Monster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @monster }
    end
  end

  # GET /monsters/new
  # GET /monsters/new.xml
  def new
    @monster = Monster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @monster }
    end
  end

	def copy
		original = Monster.find(params[:id])
		@monster = original.clone
		@monster.keywords = original.keywords
		render :action => :new
	end
		
  # GET /monsters/1/edit
  def edit
    @monster = Monster.find(params[:id])
  end

  # POST /monsters
  # POST /monsters.xml
  def create
    @monster = Monster.new(params[:monster])

		if params[:keywords]
			@monster.keywords = Keyword.find(params[:keywords].keys)
		else 
			@monster.keywords = []
		end
		
    respond_to do |format|
      if @monster.save
        format.html { redirect_to(monsters_path, :notice => 'Monster was successfully created.') }
        format.xml  { render :xml => @monster, :status => :created, :location => @monster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @monster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /monsters/1
  # PUT /monsters/1.xml
  def update
    @monster = Monster.find(params[:id])
    if params[:keywords]
			@monster.keywords = Keyword.find(params[:keywords].keys)
		else 
			@monster.keywords = []
		end

    respond_to do |format|
      if @monster.update_attributes(params[:monster])
        format.html { redirect_to(monsters_path, :notice => 'Monster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @monster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /monsters/1
  # DELETE /monsters/1.xml
  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy

    respond_to do |format|
      format.html { redirect_to(monsters_url) }
      format.xml  { head :ok }
    end
  end
  
end
