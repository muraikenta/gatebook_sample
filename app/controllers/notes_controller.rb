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
    @note = Note.new
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to note_path(@note)
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
end
