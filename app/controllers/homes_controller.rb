class HomesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def prof
  end

  def update
  end

  def destroy
  end

  def identification
  end

  def card
    card = Card.find_by(user_id: current_user.id)
    Payjp.api_key =  'sk_test_274c8b939aa04632fc0cb6dd'
    customer = Payjp::Customer.retrieve(card.customer_id)
    @default_card_information = customer.cards.retrieve(card.card_id)
  end

  def exhibition
    @item = Item.all
    @items = @item.where(user_id: current_user.id)
  end
end
