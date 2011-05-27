class SpinsController < ApplicationController
  before_filter :authenticate_user!, :except => [ :index, :show ]
  before_filter :check_permission, :except => [:index, :show ]
  # GET /spins
  # GET /spins.xml
  def index
    @spins = Spin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spins }
    end
  end

  # GET /spins/1
  # GET /spins/1.xml
  def show
    @spin = Spin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spin }
    end
  end

  # GET /spins/new
  # GET /spins/new.xml
  def new
    @spin = Spin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spin }
    end
  end

  # GET /spins/1/edit
  def edit
    @spin = Spin.find(params[:id])
  end

  # POST /spins
  # POST /spins.xml
  def create
    @spin = Spin.new(params[:spin])

    respond_to do |format|
      if @spin.save
        format.html { redirect_to(@spin, :notice => 'Spin was successfully created.') }
        format.xml  { render :xml => @spin, :status => :created, :location => @spin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spins/1
  # PUT /spins/1.xml
  def update
    @spin = Spin.find(params[:id])

    respond_to do |format|
      if @spin.update_attributes(params[:spin])
        format.html { redirect_to(@spin, :notice => 'Spin was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spins/1
  # DELETE /spins/1.xml
  def destroy
    @spin = Spin.find(params[:id])
    @spin.destroy

    respond_to do |format|
      format.html { redirect_to(spins_url) }
      format.xml  { head :ok }
    end
  end
private
  def check_permission
    if !current_user.admin
      redirect_to root_path
    end
  end
end
