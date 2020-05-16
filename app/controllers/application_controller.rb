class ApplicationController < ActionController::Base
    #devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合その前にユーザ名（name）のデータ操作を許可
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :current_user
    
    
    def after_sign_in_path_for(resource)
        user_path(resource) # ログイン後に遷移するpathを設定
    end
    
    def after_sign_out_path_for(resource)
        new_user_session_path # ログアウト後に遷移するpathを設定
    end
    
    
    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
            devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
        end
        
    private
        # def log_in(user)
        #     session[:user_id] = user.id
        # end
        
        # def current_user
        #     return unless session[:user_id]
        #     @current_user ||= User.find_by(id: session[:user_id])
        # end
    
    
    
end
