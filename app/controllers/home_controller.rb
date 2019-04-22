class HomeController < Frack::BaseController
  def index
    @users = User.all
    render
  end

  def contact
    render
  end

  def send_mail_to_system
    render
  end
end
