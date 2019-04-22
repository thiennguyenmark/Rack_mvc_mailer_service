class HomeController < Frack::BaseController
  def index
    @users = User.all
    render
  end

  def contact
    render
  end
end
