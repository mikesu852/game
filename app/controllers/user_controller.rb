class UserController < ApplicationController

  layout "user"
  before_action :authenticate_user!

  def show                                   # 顯示單筆 Product 資料/頁面 (amdin/products/1)
    @cu_id = current_user.id
    @user = User.find(params[:id])           # 指定某一筆 Product 資料

    if @user.photo.present?                  # 如果沒有 Product 圖片就 build 關連表單 photo
        @photo = @user.photo
      else
        @photo = @user.build_photo
        #@photo.cu_id = @cu_id                # 把 CUID 丟進去 (測試用)
        #@photo.save                          # 寫入 date 到資料庫
    end
  end

  def edit
    @cu_id = current_user.id
    @user = User.find(params[:id])           # 指定某一筆 Product 資料

    if @user.photo.present?                  # 如果沒有 Product 圖片就 build 關連表單 photo
        @photo = @user.photo
      else
        @photo = @user.build_photo
        #@photo.cu_id = @cu_id                # 把 CUID 丟進去 (測試用)
        #@photo.save                          # 寫入 date 到資料庫
    end
  end

  def update
    @user = User.find(params[:id])           # 指定某一筆 Product 資料

    if @user.update(user_params)
      redirect_to user_path                  # 新增資料後重新導向 Products 列表 (根據 view 結構)
    else
      render :edit                           # 將預設 render "update.html.erb" 改為 "edit.html.erb"
    end
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params

    params.require(:user).permit(photo_attributes: [:pic1, :pic2, :pic3, :pic4, :pic5,
                                                    :pic6, :pic7, :pic8, :pic9, :pic10,
                                                    :pic11, :pic12, :pic13, :pic14, :pic15,
                                                    :pic16, :pic17, :pic18, :pic19, :pic20,
                                                    :pic21, :pic22, :pic23, :pic24, :pic25, :id])
                                                    # :image, :id])
  end
end
