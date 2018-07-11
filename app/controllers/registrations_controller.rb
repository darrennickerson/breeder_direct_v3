class RegistrationsController < Devise::RegistrationsController
def delete
  def remove_attachment
  attchmnt = ActiveStorage::Attachment.find(params[:id])
  attchmnt.purge # or use purge_later
  redirect_back(fallback_location: user_edit_path)
end
end

def show
  @user = User.find(params[:id])
end
  private

  def sign_up_params
    params.require(:user).permit(:f_name, :l_name, :company, :country, :state, :username, :image, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:f_name, :l_name, :company, :country, :state, :username, :image, :email, :password, :password_confirmation, :current_password)
  end

end
