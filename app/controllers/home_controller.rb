class HomeController < ApplicationController

  #before_filter :authenticate_user!

  def index
    if current_user # 幫使用者建立照片資料夾
      @cu_id = current_user.id

      @cu_path = (Rails.public_path.to_s + "/photos")
      @cu_path = @cu_path + '/' + @cu_id.to_s
      Dir.mkdir(@cu_path) unless File.exists?(@cu_path)

      @user = User.find(@cu_id)
    end
  end

end
