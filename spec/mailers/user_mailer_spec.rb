require "spec_helper"

describe UserMailer do
  describe "signup_confirmation" do
    let(:mail) { UserMailer.signup_confirmation }

    it "renders the headers" do
      mail.subject.should eq("Signup confirmation")
      mail.to.should eq([user.email])
      mail.from.should eq(["noreply@airJnM.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
