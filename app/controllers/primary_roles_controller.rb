class PrimaryRolesController < ApplicationController
  # GET /primary_roles
  # GET /primary_roles.xml
  def index
    @primary_roles = PrimaryRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @primary_roles }
    end
  end

  # GET /primary_roles/1
  # GET /primary_roles/1.xml
  def show
    @primary_role = PrimaryRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @primary_role }
    end
  end

  # GET /primary_roles/new
  # GET /primary_roles/new.xml
  def new
    @primary_role = PrimaryRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @primary_role }
    end
  end

  # GET /primary_roles/1/edit
  def edit
    @primary_role = PrimaryRole.find(params[:id])
  end

  # POST /primary_roles
  # POST /primary_roles.xml
  def create
    @primary_role = PrimaryRole.new(params[:primary_role])

    respond_to do |format|
      if @primary_role.save
        format.html { redirect_to(@primary_role, :notice => 'Primary role was successfully created.') }
        format.xml  { render :xml => @primary_role, :status => :created, :location => @primary_role }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @primary_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /primary_roles/1
  # PUT /primary_roles/1.xml
  def update
    @primary_role = PrimaryRole.find(params[:id])

    respond_to do |format|
      if @primary_role.update_attributes(params[:primary_role])
        format.html { redirect_to(@primary_role, :notice => 'Primary role was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @primary_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_roles/1
  # DELETE /primary_roles/1.xml
  def destroy
    @primary_role = PrimaryRole.find(params[:id])
    @primary_role.destroy

    respond_to do |format|
      format.html { redirect_to(primary_roles_url) }
      format.xml  { head :ok }
    end
  end
end
