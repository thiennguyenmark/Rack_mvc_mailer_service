require './config/setup'

class HomeController < Base::BaseController
  def index
    render
  end

  def contact
    render
  end

  def send_mail_to_system
    contact_params
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save!
      ContactWorker.perform_async('Thien Nguyen not used')
      render
    else
      @errors = @contact.errors
      byebug
      render 'home/contact'
    end
  end

  def fails
  end

  private

  def contact_params
    return{
      firstname: params['firstname'],
      lastname: params['lastname'],
      email: params['email'],
      phone_number: params['phone_number'],
      message: params['message']
    }
  end
end
