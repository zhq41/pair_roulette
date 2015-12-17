class CobaController < ApplicationController

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
    @result = []
    @t_pair.times do
      if @total >= 2
        @result << ["Pair", @member[0] , @member[1]]
        @member = @member.drop(2)
        @total = @total-2
      else
        @result << ["Solo", @member[0] , @member[0]]
        @member = @member.drop(1)
        @total = @total-1
      end
    end
    @pairs = []
    @t_pair.times do
      @pairs << Pair.new
    end
    @counter = 0
  end

  def result
    @pairs = params[:pair]
    Pair.update_all status: "done"
    @pairs.each do |index, pair|
      new_pair = Pair.new
      new_pair.members = pair[:member1], pair[:member2]
      new_pair.details = pair[:details]
      new_pair.status = "active"
      new_pair.save
    end
    redirect_to roulette_path
  end

  private
  def set_coba
  end

  def coba_params
    params.require(:pair).permit(:member1, :member2, :details, :status)
  end
end
