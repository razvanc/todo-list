class TodosListsController < ApplicationController
  before_action :set_todos_list, only: [:show, :edit, :update, :destroy]

  # GET /todos_lists
  # GET /todos_lists.json
  def index
    @todos_lists = TodosList.all
  end

  # GET /todos_lists/1
  # GET /todos_lists/1.json
  def show
  end

  # GET /todos_lists/new
  def new
    @todos_list = TodosList.new
  end

  # GET /todos_lists/1/edit
  def edit
  end

  # POST /todos_lists
  # POST /todos_lists.json
  def create
    @todos_list = TodosList.new(todos_list_params)

    respond_to do |format|
      if @todos_list.save
        format.html { redirect_to @todos_list, notice: 'Todos list was successfully created.' }
        format.json { render :show, status: :created, location: @todos_list }
      else
        format.html { render :new }
        format.json { render json: @todos_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos_lists/1
  # PATCH/PUT /todos_lists/1.json
  def update
    respond_to do |format|
      if @todos_list.update(todos_list_params)
        format.html { redirect_to @todos_list, notice: 'Todos list was successfully updated.' }
        format.json { render :show, status: :ok, location: @todos_list }
      else
        format.html { render :edit }
        format.json { render json: @todos_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos_lists/1
  # DELETE /todos_lists/1.json
  def destroy
    @todos_list.destroy
    respond_to do |format|
      format.html { redirect_to todos_lists_url, notice: 'Todos list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todos_list
      @todos_list = TodosList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todos_list_params
      params.require(:todos_list).permit(:title, :description)
    end
end
