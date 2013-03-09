# Ig App API

This is an api sample app, using oauth for authentication.

## Instalation

Clone the application from github

`git clone git@github.com/jdestradap/ig_app`

Install all required gems

`bundle install`

Create and setup a database for development and another one for testing

`rake db:create:all`

`rake db:migrate`

## Ig App Client

Please check [this](https://github.com/jdestradap/client_ig_app_api) out. Is a pretty client (on rails) to get data from Ig App API.

## Ig App Sample code

### Get all products

| HTTP method | PATH | Parameters |
| ---------- | :--------- | :----------: |
| GET    | http://localhost:3000/api/products       | name, description       |



	require 'oauth'
	require 'json'

	consumer = OAuth::Consumer.new("GfoBZmWinGMmxwnQEiYeDjW2jB31IchcvWNRaeLV", "5uyICKnFnCPBFcFBIpqvSWscepbI1Aay4njNuPv6", {
        :site                 => "http://matiz.igapps.co",
        :request_token_path   => "/oauth/request_token",
        :authorize_url        => "/oauth/access_token",
        :access_token_path    => "/oauth/authorize"
      })

	client = OAuth::AccessToken.new(consumer,
                           			 "SS8hK5pZeEGADVNo1ZbgpFS2sh802ZpQzRxHwOgb",
                           			 "IBU8OAIgx6bnUVFJgGtw3WFoAcsuBwtahc3tCqSd")

	body = JSON.generate('name'=>'Baloto', 'description'=>'Muy Rico')
	result = client.get('http://localhost:3000/api/products')

	print result.body

### Create a product

| HTTP method | PATH | Parameters |
| ---------- | :--------- | :----------: |
| POST    | http://localhost:3000/api/products       | name, description       |



	require 'oauth'
	require 'json'

	consumer = OAuth::Consumer.new("GfoBZmWinGMmxwnQEiYeDjW2jB31IchcvWNRaeLV", "5uyICKnFnCPBFcFBIpqvSWscepbI1Aay4njNuPv6", {
        :site                 => "http://matiz.igapps.co",
        :request_token_path   => "/oauth/request_token",
        :authorize_url        => "/oauth/access_token",
        :access_token_path    => "/oauth/authorize"
      })

	client = OAuth::AccessToken.new(consumer,
                           			 "SS8hK5pZeEGADVNo1ZbgpFS2sh802ZpQzRxHwOgb",
                           			 "IBU8OAIgx6bnUVFJgGtw3WFoAcsuBwtahc3tCqSd")

	body = JSON.generate('name'=>'Baloto', 'description'=>'Muy Rico')
	result = client.post('http://localhost:3000/api/products', body, {"Content-Type"=>"application/json"})

	print result.body


### Update product name or description

| HTTP method | PATH | Parameters |
| ---------- | :--------- | :----------: |
| PUT    | http://localhost:3000/api/products/{product_id}       | name, description       |



	require 'oauth'
	require 'json'

	consumer = OAuth::Consumer.new("GfoBZmWinGMmxwnQEiYeDjW2jB31IchcvWNRaeLV", "5uyICKnFnCPBFcFBIpqvSWscepbI1Aay4njNuPv6", {
        :site                 => "http://matiz.igapps.co",
        :request_token_path   => "/oauth/request_token",
        :authorize_url        => "/oauth/access_token",
        :access_token_path    => "/oauth/authorize"
      })

	client = OAuth::AccessToken.new(consumer,
                           			 "SS8hK5pZeEGADVNo1ZbgpFS2sh802ZpQzRxHwOgb",
                           			 "IBU8OAIgx6bnUVFJgGtw3WFoAcsuBwtahc3tCqSd")

	body = JSON.generate('name'=>'Baloto', 'description'=>'Rico')
	result = client.put('http://localhost:3000/api/products/1', body, {"Content-Type"=>"application/json"})

	print result.body

### Delete product

| HTTP method | PATH | Parameters |
| ---------- | :--------- | :----------: |
| DELETE    | http://localhost:3000/api/products/{product_id}       | name, description       |


	require 'oauth'
	require 'json'

	consumer = OAuth::Consumer.new("GfoBZmWinGMmxwnQEiYeDjW2jB31IchcvWNRaeLV", "5uyICKnFnCPBFcFBIpqvSWscepbI1Aay4njNuPv6", {
        :site                 => "http://matiz.igapps.co",
        :request_token_path   => "/oauth/request_token",
        :authorize_url        => "/oauth/access_token",
        :access_token_path    => "/oauth/authorize"
      })

	client = OAuth::AccessToken.new(consumer,
                           			 "SS8hK5pZeEGADVNo1ZbgpFS2sh802ZpQzRxHwOgb",
                           			 "IBU8OAIgx6bnUVFJgGtw3WFoAcsuBwtahc3tCqSd")

	result = client.delete('http://localhost:3000/api/products/1')

	print result.body
