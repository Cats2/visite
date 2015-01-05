class SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token
 
  def create
    respond_to do |format|
      format.html do
        params[:user].merge!(remember_me: 1)
        super
      end
      format.json do
        resource = User.find_for_database_authentication(:email => params[:email])
        return invalid_login_attempt unless resource
        resource.ensure_authentication_token
 
        if resource.valid_password?(params[:password])
          sign_in(:user, resource)
          render :json => {:success => true, :auth_token => resource.authentication_token, :email => resource.email}
        else
          invalid_login_attempt
        end
      end
    end
  end
 
  def invalid_login_attempt
    render :json => {:success => false, :error => "invalid login"}
  end
 
end