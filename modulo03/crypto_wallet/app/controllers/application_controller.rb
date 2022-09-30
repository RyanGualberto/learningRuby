class ApplicationController < ActionController::Base
    before_action :set_locale

    def set_locale
        if params[:locale]
            cookies[:locale] = params[:locale]  
        end
        # I18n.locale = params[:locale] || I18n.default_locale

        if cookies[:locale]
            if I18n.locale != cookies[:locale]
            I18n.locale = cookies[:locale]
            end    
        end
    end 
end
    

    # def default_url_options(options = {})
    #     { locale: I18n.locale }.merge options
    # end

