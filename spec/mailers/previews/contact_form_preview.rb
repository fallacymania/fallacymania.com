# Preview all emails at http://localhost:3000/rails/mailers/contact_form
class ContactFormPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_form/contact_us
  def contact_us
    ContactFormMailer.contact_us
  end

end
