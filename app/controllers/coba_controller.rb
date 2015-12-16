class CobaController < ApplicationController
  #caches_action :index

  def index
    
  end
  def roulette
    @member = Member.all
    @total  = @member.count
    #random member before use
    rand(@total).times do
      @member = @member.shuffle
    end

    @t_pair = (@total/ 2) + (@total % 2)
    @pairs = Pair.new
    @cache = []
    @description = "Lorem Ipsum Doloren"
  end

  private
  def set_coba
    @coba
  end

  def coba_params
    params.require(:coba).permit(:member1, :member2)
  end
end
