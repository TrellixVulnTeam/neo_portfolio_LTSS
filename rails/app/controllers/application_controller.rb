class ApplicationController < ActionController::API
  # 404 error
  rescue_from ActiveRecord::RecordNotFound do
    render json: { status: 'ERROR', message: 'Record not found' }, status: :not_found
  end
end