class NotesController < ApplicationController
  # before_actionを設定してください

  def index
    @notes = Note.all
  end

  def show
    # 以下の一行を削除してください
    @note = Note.find(params[:id])
  end

  def new
  end

  def create
    @note = Note.new
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to note_path(@note.id)
  end

  def edit
    # 以下の一行を削除してください
    @note = Note.find(params[:id])
  end

  def update
    # 以下の一行を削除してください
    @note = Note.find(params[:id])
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to note_path(@note.id)
  end

  def destroy
    # 以下の一行を削除してください
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end

  # set_noteメソッドをprivateメソッドとして定義してださい

end
