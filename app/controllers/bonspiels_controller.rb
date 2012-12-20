class BonspielsController < ApplicationController
  # GET /bonspiels
  # GET /bonspiels.json
  def index
    @bonspiels = Bonspiel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bonspiels }
    end
  end

  # GET /bonspiels/1
  # GET /bonspiels/1.json
  def show
    @bonspiel = Bonspiel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bonspiel }
    end
  end

  # GET /bonspiels/new
  # GET /bonspiels/new.json
  def new
    @bonspiel = Bonspiel.new
    @bonspiel.teams.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bonspiel }
    end
  end

  # GET /bonspiels/1/edit
  def edit
    @bonspiel = Bonspiel.find(params[:id])
  end

  # POST /bonspiels
  # POST /bonspiels.json
  def create
    @bonspiel = Bonspiel.new(params[:bonspiel])

    respond_to do |format|
      if @bonspiel.save
        format.html { redirect_to @bonspiel, notice: 'Bonspiel was successfully created.' }
        format.json { render json: @bonspiel, status: :created, location: @bonspiel }
      else
        format.html { render action: "new" }
        format.json { render json: @bonspiel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bonspiels/1
  # PUT /bonspiels/1.json
  def update
    @bonspiel = Bonspiel.find(params[:id])

    respond_to do |format|
      if @bonspiel.update_attributes(params[:bonspiel])
        format.html { redirect_to @bonspiel, notice: 'Bonspiel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bonspiel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonspiels/1
  # DELETE /bonspiels/1.json
  def destroy
    @bonspiel = Bonspiel.find(params[:id])
    @bonspiel.destroy

    respond_to do |format|
      format.html { redirect_to bonspiels_url }
      format.json { head :no_content }
    end
  end
end
