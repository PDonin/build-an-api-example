class Api::V1::MicropostsController < Api::V1::BaseController
  def index
    user = User.find(params[:id])
    @microposts = paginate(user.microposts)
  end
end
