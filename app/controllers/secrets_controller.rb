class SecretsController < ApplicationController
    before_action :require_logged_in

    def show
    end
end


# SecretsController get show should redirect to login if you're not logged in
# SecretsController get show should show you the secret if you're logged in
