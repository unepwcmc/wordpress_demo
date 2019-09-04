################################################################################
## Setup Environment
################################################################################

# The Git branch this environment should be attached to.
set :branch, 'development'

# The environment's name. To be used in commands and other references.
set :stage, :staging

# The URL of the website in this environment.
set :stage_url, 'http://www.example.com'

# The environment's server credentials
server '85.159.208.107', user: 'wcmc', roles: %w(web app db)

# The deploy path to the website on this environment's server.

set :deploy_user, 'wcmc'
set :deploy_to, "/home/#{fetch(:deploy_user)}/#{fetch(:application)}"

# The web user on this environment's server.
set :web_user, 'wcmc'
