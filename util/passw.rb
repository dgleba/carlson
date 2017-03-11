
# reset passwords..

# to run this at the prompt..
# http://stackoverflow.com/questions/10313181/pass-ruby-script-file-to-rails-console
#
# usage:    rails r util/passw.rb


u=User.where(:email => 'a@e').first
u.password='a2a2'
u.password_confirmation='a2a2'
u.save!

u=User.where(:email => 'reg').first
u.password='a2a2'
u.password_confirmation='a2a2'
u.save!