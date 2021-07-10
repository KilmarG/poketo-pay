wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/KilmarG/poketo-pay/main/default.conf

export BTCPAY_HOST="pay.poketo.link"

export BTCPAY_ENABLE_SSH=true

export ACME_CA_URI=production

docker-compose up 

docker run -it --name code-server -p 127.0.0.1:3000:3000 \
  -v "$HOME/.config:/home/coder/.config" \
  -v "$PWD:/home/coder/project" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  codercom/code-server:latest
 
*+~

docker run -it --init -p 3000:3000 -v "$(pwd):/~/:cached" theiaide/theia:next

docker-compose up \
    -e "NBITCOIN_NETWORK=mainnet" \
    -e "BTCPAY_HOST=pay.poketo.link" \
    -e "LETSENCRYPT_EMAIL=kilmar.999@gmail.com" \
    -e "ACME_CA_URI=production"