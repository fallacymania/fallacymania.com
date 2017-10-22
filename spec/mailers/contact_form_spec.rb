require "rails_helper"

RSpec.describe ContactFormMailer, type: :mailer do
  describe "contact_us" do
    let(:mail) { ContactFormMailer.contact_us(name: 'JohnDoe', email: 'to@example.org', phone:'555-2368', message: 'Hi') }

    it "renders the headers" do
      expect(mail.subject).to eq("Website Contact Form: JohnDoe")
      expect(mail.to).to eq(["info@fallacymania.com"])
      expect(mail.from).to eq(["noreply@fallacymania.com"])
      expect(mail.reply_to).to eq(["to@example.org"])
    end

    it "renders the body" do
      expect(mail.body.parts.find {|p| %r{text/plain} =~ p.content_type}.body.raw_source).to match("Hi")
    end
  end

end
