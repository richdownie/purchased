class PerishablesController < ApplicationController
  # GET /perishables
  # GET /perishables.xml
  def index
    @perishables = Perishable.all
  end

  # GET /perishables/1
  # GET /perishables/1.xml
  def show
    @perishable = Perishable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @perishable }
    end
  end

  # GET /perishables/new
  # GET /perishables/new.xml
  def new
    @perishable = Perishable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @perishable }
    end
  end

  # GET /perishables/1/edit
  def edit
    @perishable = Perishable.find(params[:id])
  end

  # POST /perishables
  # POST /perishables.xml
  def create
    @perishable = Perishable.new(params[:perishable])

    respond_to do |format|
      if @perishable.save
        flash[:notice] = 'Perishable was successfully created.'
        format.html { redirect_to(@perishable) }
        format.xml  { render :xml => @perishable, :status => :created, :location => @perishable }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @perishable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /perishables/1
  # PUT /perishables/1.xml
  def update
    @perishable = Perishable.find(params[:id])

    respond_to do |format|
      if @perishable.update_attributes(params[:perishable])
        flash[:notice] = 'Perishable was successfully updated.'
        format.html { redirect_to(@perishable) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @perishable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /perishables/1
  # DELETE /perishables/1.xml
  def destroy
    @perishable = Perishable.find(params[:id])
    @perishable.destroy

    respond_to do |format|
      format.html { redirect_to(perishables_url) }
      format.xml  { head :ok }
    end
  end
end
