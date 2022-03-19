class SessionsController < ApplicationController

    def new
    end

    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
    end

    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
    end

end

# SessionsController create redirects to login page if :name is nil
# SessionsController create redirects to login page if :name is empty
# SessionsController create sets session[:name] if :name was given
# SessionsController destroy leaves session[:name] nil if it was not set
# SessionsController destroy clears session[:name] if it was set