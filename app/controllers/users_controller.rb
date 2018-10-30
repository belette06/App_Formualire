class UsersController < ApplicationController
  
  
  def index
    # récupère tous les potins pour les afficher dans la vue index (index.html.erb)
  end

  def show
    # récupère le potin concerné pour l'afficher dans la vue show (show.html.erb)
  end

  def new
  	@user = User.new
    # créé un potin vide qui sera envoyé dans le formulaire dans la vue new (new.html.erb)
  end

  def create
   
if params[:user] 
@user = User.create(username: params[:user][:username], bio: params[:user][:bio], email: params[:user][:email])

else


#methode create pour les deux autres tableau
	@user = User.create(username: params[:username], bio: params[:bio], email: params[:email])
    # créé un potin à partir de params, qui est un hash qui représente les infos passées dans le formulaire de new
    # une fois ceci fait, redirige le user vers une page cool (en général la page show)
  end
end

  def edit
    # trouve le potin concerné qui sera envoyé dans le formulaire dans la vue edit (edit.html.erb)
  end

  def update
    # met à jour le potin à partir de params, qui est un hash qui représente les infos passées dans le formulaire de edit
    # une fois ceci fait, redirige le user vers une page cool (en général la page show)
  end

  def destroy
    # trouve le potin concerné, et le détruit de la base
    # une fois ceci fait, redirige le user vers une page cool (en général la page index)
  end
end
