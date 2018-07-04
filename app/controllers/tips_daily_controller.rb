class TipsDailyController < ActionController::Base
  def index
    render html: "hello, world!"
  end 


  def show
    random_tip_id = rand(TipsDaily.count)
    current_tip = TipsDaily.find(random_tip_id)

    render json: current_tip
  end
end
