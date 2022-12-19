class CheckoutController < ActionController

  def create
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        name: product.name,
        amount: product.price,
        currency: "usd",
        quantity: 1
      }],
      mode: 'payment',
      success_url: 'https://example.com/success',
      cancel_url: 'https://example.com/cancel',
    })
  end

end