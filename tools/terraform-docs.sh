curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/v0.16.0/terraform-docs-v0.16.0-$(uname)-amd64.tar.gz
tar -xzf terraform-docs.tar.gz
chmod +x terraform-docs
sudo mv terraform-docs /usr/local/bin



#terraform-docs completion zsh > /usr/local/share/zsh/site-functions/_terraform-docs
#autoload -U compinit && compinit


# Running 
# terraform-docs markdown table --output-file README.md --output-mode replace ${PWD}