class LikesController < ApplicationController
  def like
    note = Note.find(params[:note_id])
    like = current_user.likes.build(note_id: note.id)
    like.save
    redirect_to note    
  end

  def unlike
    # ここにコードを貼り付けてください
	    
    
  end
end
