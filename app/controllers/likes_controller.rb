class LikesController < ApplicationController
  def like
    note = Note.find(params[:note_id])
    like = current_user.likes.build(note_id: note.id)
    like.save
    redirect_to note    
  end

  def dislike
    # findメソッドを用いてNoteインスタンスを取得し、変数noteに代入してください
    
    
    # current_userとfind_byメソッドでLikeインスタンスを取得してください
    
    
    # Likeインスタンスを削除してください
    
    
    # notesコントローラのshowアクションにリダイレクトしてください
    
    
  end
end
