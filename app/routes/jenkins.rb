require './app/routes/base-route'
require 'json'

module Pushroulette
  class Jenkins < Pushroulette::BaseRoute

    get '/jenkins-hi' do
      'jenking says hi'
    end

    post '/jenkins/job-finalized' do
      data = JSON.parse request.body.read
      failure_clip = @config['failureClip']
      clip_name =  failure_clip.kind_of?(Array) ? failure_clip.sample : failure_clip
      puts clip_name
      if data['build']['status'] == 'FAILURE'
        playClip("./app/clips/#{clip_name}.mp3", false)
      end
    end

  end
end
