class CowController < ApplicationController
  def say
    message       = params[:message]
    cow           = params[:cow] || 'cow'
    balloon_type  = params[:balloon_type] || 'say'
    face_type     = params[:face_type] || 'default'

    @message = Cow
      .new(cow: cow, face_type: face_type)
      .say(message, balloon_type)
  end
end
