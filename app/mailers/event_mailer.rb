class EventMailer < ApplicationMailer

	default from: 'no-reply@monsite.fr'
 
  def confirmation_party_send (event)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @event = User.find(event.user_id)
   # @event_mail = User.find(event.user_id)

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @event.email, subject: 'Confirmation Création Event !') 
  end
end
