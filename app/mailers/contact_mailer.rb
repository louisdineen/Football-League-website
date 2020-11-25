# frozen_string_literal: true

class ContactMailer < ActionMailer::Base
  def contact_email(email, name, _telephone, message)
    @email = email
    @name = name
    @message = message

    mail cc: @email
  end
end
