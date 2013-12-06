class MainController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index

  end

  def auto_links
    @client_ip = remote_ip()
    @i_list = Brokersweb.create(params ,@client_ip)
    #render text:  @i_list.inspect and return false
  end
end