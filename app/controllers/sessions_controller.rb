class SessionsController < ApplicationController
    def new
      # No need for anything in here, we are just going to render our
      # new.html.erb AKA the login page
    end
     
    def create
      @user = nil;
      if auth
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
          u.name = auth['info']['name']
          u.email = auth['info']['email']
          # u.image = auth['info']['image']
        end
      else
        # Look up User in db by the email address submitted to the login form and
        # convert to lowercase to match email in db in case they had caps lock on:
        @user = user = User.find_by(email: params[:login][:email].downcase)
        
        # Verify user exists in db and run has_secure_password's .authenticate() 
        # method to see if the password submitted on the login form was correct: 
        if user && user.authenticate(params[:login][:password]) 
            # Save the user.id in that user's session cookie:
            # session[:user_id] = user.id.to_s
            # redirect_to root_path, notice: 'Successfully logged in!'
        else
            # if email or password incorrect, re-render login page:
            flash.now.alert = "Incorrect email or password, try again."
            render :new
        end
      end
  
      session[:user_id] = @user.id
      if !@user.enrollment_id
        redirect_to '/enrollments/new'
      else
        redirect_to "/courses/#{@user.enrollment_id}"
      end
    end

    def create2
      
      
    end

    def destroy
      # delete the saved user_id key/value from the cookie:
      session.delete(:user_id)
      redirect_to login_path, notice: "Logged out!"
    end
  
    private
  
    def auth
      request.env['omniauth.auth']
    end
  end