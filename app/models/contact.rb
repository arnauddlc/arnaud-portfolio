class Contact < MailForm::Base

  append :remote_ip, :user_agent
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject,   validate: true
  attribute :message
  validates :message,   length: { in: 30..5000 }

  def headers
    {
      subject: "AdLC - #{subject}",
      to: 'arnaud.delachaise@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end