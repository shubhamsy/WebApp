module UserExtension

  def set_user
    begin

        @user = current_user
          if @user.present? 
            redirect_to "/slots", success: 'You are logged in successfully'
          end

    rescue Exception => ex
      flash[:error_message] = ex.message
    end
  end

end