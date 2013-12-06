
class Brokersweb
require 'open-uri'
require 'crack'

  def self.create(params = {} ,ip)
     zipcode = params[:zipcode]
     url_params = (params[:zipcode] == '' || params[:zipcode].nil?) ? "bwapsstate=NY" : "bwapszip=#{params[:zipcode]}"
      url = "https://searchapi.brokersweb.com/SearchApiAps/?bwapsprodid=300&bwapsaid=12480&#{url_params}&bwapscid=8855&bwapsadsource=google&client_ip='#{ip}'&bwapsaffiliatedomain=ensure4less.com&client_user_agent=Mozilla/5.0%20%28X11;%20Ubuntu;%20Linux%20i686;%20rv:20.0%29%20Gecko/20100101%20Firefox/20.0&client_browser_type=Firefox20.0&client_browser_version=20.0&client_browser_crawler=false&authorization=Basic%20YWRpQGxlYWRpY2lvdXMuY29tOmFkaWhpdHMxIQ=="

        xml_data = open(url).read()
         doc = Crack::XML.parse(xml_data)
         @doc_list = doc.values[0].values[1].values[0]
        return  @doc_list

  end

end