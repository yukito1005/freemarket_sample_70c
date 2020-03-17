# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    unless @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new and return
    end
    session["devise.regist_data"] = {user: @user.attributes}
    session["devise.regist_data"][:user]["password"] = params[:user][:password]
    @profile = @user.build_profile
    render :new_profile
  end

  def create_profile
    @user = User.new(session["devise.regist_data"]["user"])
    @profile = Profile.new(profile_params)
    unless @profile.valid?
      flash.now[:alert] = @profile.errors.full_messages
      render :new_profile and return
    end
    @user.build_profile(@profile.attributes)
    @user.save
    sign_in(:user, @user)
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

  def profile_params
    params.require(:profile).permit(:firstname, :firstname_kana,
                                    :lastname, :lastname_kana,
                                    :postal_code, :prefecture,
                                    :city, :address, :building,
                                    :tell, :birthday)
  end

end
