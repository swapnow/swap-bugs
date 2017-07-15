class Api::ErrorsController < ApplicationController
  def index
    # params['filters] = { which_end: 'frontend', code: 401 } as example.
    if params['filters']
      @errors = Error.where(params[filters]) || []
    else
      @errors = Error.all || []
    end
  end

  def create
    # add check to ensure only swapnow.io can post
    p request.base_url 
    @error = Error.new(error_params)
    @error.save
  end

  # mark error as resolved
  def update
    @error = Error.find_by(id: params[:id])
    @error.resolved = true
    @error.save
  end

  private

  def error_params
    params.require(:error).permit(:body, :which_end, :code, :component)
  end
end
