class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
  end

  def create
    # newの引数をnote_paramsに変更してください
    @note = Note.new(title: params[:title], content: params[:content])
    @note.save
    redirect_to note_path(@note.id)
  end

  def edit
  end

  def update
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to note_path(@note.id)
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end

  private

    def set_note
      @note = Note.find(params[:id])
    end

    # note_paramsを定義してください
    
end
