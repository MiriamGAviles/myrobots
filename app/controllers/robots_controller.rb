class RobotsController < ApplicationController

	before_action :set_robot, only: [:show, :edit, :update, :destroy]

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
        render :show, notice: 'robot was successfully created.' 
        
      else
         render "new"
    end
    
  end

  def edit
  end

  def update

    if @robot.update(robots_params)
      redirect_to @robot
    else
      render 'edit'
    end
    
  end


  def destroy
  	@robot.destroy
    redirect_to robots_path
  end

  private

  def set_robot
    @robot = Robot.find(params[:id])

  end

  def robots_params

  	params.require(:robot).permit(:name,:serial_number, :r_type)
  end

end
