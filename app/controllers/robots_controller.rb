class RobotsController < ApplicationController

	before_action :set_robot, only: [:show, :edit, :update, :delete]

  def index
  	@robots = Robot.all
  	#if @robots.empty? 
  		#return "No hay robots"
  	#else
  		#@robots
  	#end
  end

  def show 
    
  end

  def new 
  	@robot=Robot.new
  end

  def create

  	@robot=Robot.new(robots_params)
  	if @robot.save
      	#render :index
        redirect_to robots_path, notice: 'robot was successfully created.' 
        
      else
         render :new 
    end
  end

  def edit
    render :update
  end

  def update
     @robot.update
      
  end


  def delete
  	@robot.destroy
  end

  private

  def set_robot
    @robot = Robot.find(params[:id])

  end

  def robots_params
  	params.require(:robots).permit(:name,:serial_number, :r_type)
  end

end
