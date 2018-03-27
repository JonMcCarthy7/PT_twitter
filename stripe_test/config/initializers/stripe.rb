# stripe.rb
Rails.configuration.stripe = {

  :publishable_key => "pk_test_vnwbY7aHN0My6lHetw4Ik11f",

  :secret_key => "sk_test_zYpgEG4LmAcwuNGsorOl7FqW"

}



Stripe.api_key = Rails.configuration.stripe[:secret_key]
