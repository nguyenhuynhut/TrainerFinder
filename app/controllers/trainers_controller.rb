class TrainersController < ApplicationController
  # GET /trainers
  # GET /trainers.xml
  def index
    @trainers = Trainer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trainers }
    end
  end

  # GET /trainers/1
  # GET /trainers/1.xml
  def show
    @trainer = Trainer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trainer }
    end
  end

  # GET /trainers/new
  # GET /trainers/new.xml
  def new
    @trainer = Trainer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trainer }
    end
  end

  # GET /trainers/1/edit
  def edit
    @trainer = Trainer.find(params[:id])
  end

  # POST /trainers
  # POST /trainers.xml
  def create
    @trainer = Trainer.new(params[:trainer])

    respond_to do |format|
      if @trainer.save
        format.html { redirect_to(@trainer, :notice => 'Trainer was successfully created.') }
        format.xml  { render :xml => @trainer, :status => :created, :location => @trainer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trainer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trainers/1
  # PUT /trainers/1.xml
  def update
    @trainer = Trainer.find(params[:id])

    respond_to do |format|
      if @trainer.update_attributes(params[:trainer])
        format.html { redirect_to(@trainer, :notice => 'Trainer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trainer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trainers/1
  # DELETE /trainers/1.xml
  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy

    respond_to do |format|
      format.html { redirect_to(trainers_url) }
      format.xml  { head :ok }
    end
  end
  def getTrainers
    @trainers = Trainer.all
    render :json => @trainers.to_json
  end
end
