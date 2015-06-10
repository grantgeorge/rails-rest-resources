class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show

    @model_has_many_associations = Event.reflect_on_all_associations.map { |assoc| assoc.name }
    @matched_associations = {}
    @assoc_fields = {}
    @params = params
    @event_fields = ['all']

    @model_has_many_associations.each do |assoc|
      if params.has_key?(assoc)
        field_name = assoc.to_s.singularize+'_fields'
        @assoc_fields[assoc] = params[field_name].split(',')

        params[field_name] == 'all' ? query_params = '*'
          : query_params = 'id,' + params[field_name]

        @matched_associations[assoc] = assoc.to_s.camelize.singularize
          .constantize.select(query_params)
          .where(@event.id) if params[assoc]
      end
    end

    @event_fields = params[:fields].split(',') if params[:fields]

  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :registration_cap, :walkins_enabled, :start, :end)
    end
end
