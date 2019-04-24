module ApplicationHelper

    def current_user
        User.find_by(id: session[:user_id])
    end

    def is_login?
        !!current_user
    end
end
