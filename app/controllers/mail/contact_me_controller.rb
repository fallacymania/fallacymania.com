class Mail::ContactMeController < ActionController::API


  # POST /mail/contact_me
  # POST /mail/contact_me.json
  def create

    @name    = helpers.sanitize params['name']
    @email   = helpers.sanitize params['email']
    @phone   = helpers.sanitize params['phone']
    @message = helpers.sanitize params['message']


    mail = ContactFormMailer.contact_us(name: @name, email: @email, phone: @phone, message: @message).deliver_now rescue nil
    if mail
      render json: {status: true}, status: :created
    else
      render json: {status: false}, status: :unprocessable_entity
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_contact_me_params
      # params.fetch(:mail_contact_me, {})
      params.require(:mail_contact_me).permit(:name, :email, :phone, :message)

    end
end
