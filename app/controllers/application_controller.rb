class ApplicationController < ActionController::Base
  # beforeアクションを定義してください


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # privateメソッドを定義し、deviseの新規登録フォームでnameを受け取れるようにしてください

  
end
