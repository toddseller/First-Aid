class DonationWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(user_id, charity_id, amount)
    user = User.find(user_id)
    charity = Charity.find(charity_id)
    amount = amount
    FirstaidMailer.donation_email(user, charity, amount).deliver_now
  end
end