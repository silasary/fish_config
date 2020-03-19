if status --is-login
	set -x PATH $PATH $HOME/gems/bin
	set -x GEM_HOME $HOME/gems
end
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end