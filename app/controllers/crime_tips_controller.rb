class CrimeTipsController < ApplicationController
  # GET /crime_tips
  # GET /crime_tips.json
  def index
    @search = CrimeTip.search(params[:search])
    @crime_tips = CrimeTip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crime_tips }
    end
  end

  # GET /crime_tips/1
  # GET /crime_tips/1.json
  def show
    @crime_tip = CrimeTip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crime_tip }
    end
  end

  # GET /crime_tips/new
  # GET /crime_tips/new.json
  def new
    @crime_tip = CrimeTip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crime_tip }
    end
  end

  # GET /crime_tips/1/edit
  def edit
    @crime_tip = CrimeTip.find(params[:id])
  end

  # POST /crime_tips
  # POST /crime_tips.json
  def create
    @crime_tip = CrimeTip.new(params[:crime_tip])

    respond_to do |format|
      if @crime_tip.save
        format.html { redirect_to @crime_tip, notice: 'Crime tip was successfully created.' }
        format.json { render json: @crime_tip, status: :created, location: @crime_tip }
      else
        format.html { render action: "new" }
        format.json { render json: @crime_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crime_tips/1
  # PUT /crime_tips/1.json
  def update
    @crime_tip = CrimeTip.find(params[:id])

    respond_to do |format|
      if @crime_tip.update_attributes(params[:crime_tip])
        format.html { redirect_to @crime_tip, notice: 'Crime tip was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @crime_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crime_tips/1
  # DELETE /crime_tips/1.json
  def destroy
    @crime_tip = CrimeTip.find(params[:id])
    @crime_tip.destroy

    respond_to do |format|
      format.html { redirect_to crime_tips_url }
      format.json { head :ok }
    end
  end
end
