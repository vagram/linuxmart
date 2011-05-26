class HumannamesController < ApplicationController
  # GET /humannames
  # GET /humannames.xml
  def index
    @humannames = Humanname.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @humannames }
    end
  end

  # GET /humannames/1
  # GET /humannames/1.xml
  def show
    @humanname = Humanname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @humanname }
    end
  end

  # GET /humannames/new
  # GET /humannames/new.xml
  def new
    @humanname = Humanname.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @humanname }
    end
  end

  # GET /humannames/1/edit
  def edit
    @humanname = Humanname.find(params[:id])
  end

  # POST /humannames
  # POST /humannames.xml
  def create
    @humanname = Humanname.new(params[:humanname])

    respond_to do |format|
      if @humanname.save
        format.html { redirect_to(@humanname, :notice => 'Humanname was successfully created.') }
        format.xml  { render :xml => @humanname, :status => :created, :location => @humanname }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @humanname.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /humannames/1
  # PUT /humannames/1.xml
  def update
    @humanname = Humanname.find(params[:id])

    respond_to do |format|
      if @humanname.update_attributes(params[:humanname])
        format.html { redirect_to(@humanname, :notice => 'Humanname was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @humanname.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /humannames/1
  # DELETE /humannames/1.xml
  def destroy
    @humanname = Humanname.find(params[:id])
    @humanname.destroy

    respond_to do |format|
      format.html { redirect_to(humannames_url) }
      format.xml  { head :ok }
    end
  end
end
