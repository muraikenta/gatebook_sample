class LikesController < ApplicationController
  def like
    # 変数noteを変数@noteに変更してください
    note = Note.find(params[:note_id])
    like = current_user.likes.build(note_id: note.id)
    like.save
  end

  def dislike
    note = Note.find(params[:note_id])
    like = current_user.likes.find_by(note_id: note.id)
    like.destroy
    redirect_to note
  end
end
