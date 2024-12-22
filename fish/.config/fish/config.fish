if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml


function nvm
  bass source /usr/share/nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

alias ls="eza --icons=always --color=always --long --no-filesize --no-time --no-user" 

# alias duckdb="~/.duckdb/duckdb"
alias cat=bat

starship init fish | source

zoxide init --cmd cd fish | source

function boot
  yarn bootstrap:clean
end

function build
  yarn build:all
end

function check
  yarn tsc:check
end

function bb
  boot && build
end

function bck
  build && check
end

function bbc
  bb && check
end

function sd
  yarn start:dev
end

function bw
  yarn build:watch
end

function typegen
  yarn gt:gen
end

function syncent
  yarn build:ent:sync
end

function genmigration
  yarn sequelize migration:generate --name $argv[1]
end

function dockerUp
  docker compose --env-file=.env.development -f docker-compose-dev.yml up
end

function dockerPull
  docker compose --env-file=.env.development -f docker-compose-dev.yml pull
end


