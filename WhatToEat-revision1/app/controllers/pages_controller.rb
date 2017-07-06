class PagesController < ApplicationController
  def weather
  end

  def create
  	require 'json'
  	require 'rest-client'

  	city = params[:page][:city].downcase
  	country = params[:page][:country].downcase

    #Google Maps API url using city and country
  	base_url = "https://maps.googleapis.com/maps/api/geocode/json?address="+city+","+country

  	response = RestClient.get base_url+city+","+country

  	data = JSON.load(response)

  	lat = data['results'][0]['geometry']['location']['lat']
  	lng = data['results'][0]['geometry']['location']['lng']

    #Google Maps API nearbysearch url
  	base_url2 = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="

  	response2 = RestClient.get base_url2+"#{lat}"+","+"#{lng}"+"&radius=500&type=restaurant&key=AIzaSyDA_-IX_8NMtw7Mu5iNTucMDuUw4vFtPn4"

  	data2 = JSON.load(response2)

  	restaurant1 = data2

    #create a list that stores restaurant names
    restaurant_list = Array.new

    #put restaurantt names in the list
    for i in 0..19
      restaurant_list.push(data2['results'][i]['name'])
    end
  



    #display restaurant names
  	#flash.now[:danger] = restaurant1
    flash.now[:danger] = restaurant_list
  	render 'weather'
  end
end
