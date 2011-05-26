class DistroVersionsController < ApplicationController
  # GET /distro_versions
  # GET /distro_versions.xml
  def index
    @distro_versions = DistroVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @distro_versions }
    end
  end

  # GET /distro_versions/1
  # GET /distro_versions/1.xml
  def show
    @distro_version = DistroVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @distro_version }
    end
  end

  # GET /distro_versions/new
  # GET /distro_versions/new.xml
  def new
    @distro_version = DistroVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @distro_version }
    end
  end

  # GET /distro_versions/1/edit
  def edit
    @distro_version = DistroVersion.find(params[:id])
  end

  # POST /distro_versions
  # POST /distro_versions.xml
  def create
    @distro_version = DistroVersion.new(params[:distro_version])

    respond_to do |format|
      if @distro_version.save
        format.html { redirect_to(@distro_version, :notice => 'Distro version was successfully created.') }
        format.xml  { render :xml => @distro_version, :status => :created, :location => @distro_version }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @distro_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /distro_versions/1
  # PUT /distro_versions/1.xml
  def update
    @distro_version = DistroVersion.find(params[:id])

    respond_to do |format|
      if @distro_version.update_attributes(params[:distro_version])
        format.html { redirect_to(@distro_version, :notice => 'Distro version was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @distro_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /distro_versions/1
  # DELETE /distro_versions/1.xml
  def destroy
    @distro_version = DistroVersion.find(params[:id])
    @distro_version.destroy

    respond_to do |format|
      format.html { redirect_to(distro_versions_url) }
      format.xml  { head :ok }
    end
  end
end
