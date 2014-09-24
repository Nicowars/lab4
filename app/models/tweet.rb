class Tweet < ActiveRecord::Base
  belongs_to :monstruo

  def cstar
	m=Monstruo.find(params[:monstruo_id])
        if m.count > 2
		m.critter_star = true
	end
  end
end
